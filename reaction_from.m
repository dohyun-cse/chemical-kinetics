function reaction_obj = reaction_from(filename)
% reaction_from creates a Reaction object from filename.
%
% <SYNTAX>
%   reaction_obj = reaction_from(filename)
%
% <DESCRIPTION>
%   reaction_obj = reaction_from(filename) creates a Reaction object from
%   the given file name. The file should be in the following format:
%     1. Comment starts with %
%     2. Spacing does not matter
%     3. Chemical name block starts with <CHEMICALS>
%        Each line in the chemical name block is a name (spacing ignored)
%        Name should not contain -, <, >, (, ).
%        e.g.,
%            <CHEMICALS>
%                A % valid
%                B % valid
%                A-C % invalid, contains -
%
%     4. Reaction block starts with <REACTIONS>
%        Each line in the reaction block is a reaction (spacing ignored)
%        4-1. Chemicals are seperated by +
%        4-2. Two reaction arrows are allowed, ->, <->
%        4-3. Last entries are reaction rates (one for irreversible, two
%             for reversible)
%        4-4. Catalyst name should be in parenthesis
%             and only before the reaction arrow.
%        4-5. Reversible + Catalyst is not yet supported.
%        e.g.,     
%             <REACTIONS>
%                 B        -> C  0.0015      % first order reaction
%                 A + A    -> B  0.001       % second order reaction
%                 C       <-> B  0.1     0.2 % reversible reaction
%                 C + (A)  -> B  0.1         % A is a catalyst
%      
%   --Example:reaction_from_ex1
%
% <INPUT>
%   - varargin (cell)
%       Something, specified by a cell, where each element is something.
%          
% <OUTPUT>
%   - varargout (cell)
%       Something, specified by a cell, where each element is something.
%
% See also

% Copyright 2024 Dohyun Kim / CC BY-NC

% Contact: dhkim.cse@gmail.com
% Developed using MATLAB 2023b on Darwin 23.3.0 Darwin Kernel Version 23.3.0: Wed Dec 20 21:30:44 PST 2023; root:xnu-10002.81.5~7/RELEASE_ARM64_T6000 arm64

%%
name_cannot_have_these = {' ', '-', '<', '>', '(', ')'};
% read file as text
text = fileread(filename);
% and split each lines
text = split(text, newline);
% remove everything after %
text = regexprep(text, '[\s]*%(.*)', '');
% remove trailing white spaces
text = regexprep(text, '\s+$', '');
% remove empty lines
text = text(strlength(text) > 0);


% find chemical name block
name_starts_at = find(strcmp(text, '<CHEMICALS>'));
if isempty(name_starts_at)
    error('Cannot find chemical names. Chemical name block should starts with <CHEMICALS>');
end
if length(name_starts_at) > 1
    error('Cannot parse more than one chemical name block');
end
% find reaction block
reaction_starts_at = find(strcmp(text, '<REACTIONS>'));
if isempty(reaction_starts_at)
    error('Cannot find reactions. Reaction block should starts with <REACTIONS>');
end
if length(reaction_starts_at) > 1
    error('Cannot parse more than one reaction block');
end
if name_starts_at > reaction_starts_at
    error('Chemical name block should appear before reaction block');
end

% parse names
names = text(name_starts_at + 1 : reaction_starts_at - 1);
names = strrep(names, ' ', '');
names = string(names(:).');
isInvalid = contains(names, name_cannot_have_these);
if any(isInvalid)
    error('There are %d names that contain invalid characters.', nnz(isInvalid));
end
% create reaction object from names
reaction_obj = Reaction(names);


% Prepare reactions
reactions = text(reaction_starts_at + 1 : end);
reactions = regexprep(reactions, '^[ \t]+', ''); % remove leading spaces
for i = 1 : length(reactions) % for each reaction
    reaction = reactions{i};
    tokens = split(reaction, ' '); % seperate by space
    tokens = tokens(strlength(tokens) > 0); % remove empty lines
    tokens(strcmp(tokens, '+')) = []; % remove addition
    seperator = contains(tokens, '-'); % find reaction arrow
    idx = find(seperator);
    if isempty(idx)
        error('Cannot find reaction arrow in reaction %d', i);
    end
    if length(idx) > 1
        error('There are more than 1 reaction arrow in reaction %d', i);
    end

    % add reaction to reaction object
    seperator = tokens{seperator};
    switch seperator
        case '->' % if irreversible
            n = idx - 1; % the number of source
            m = length(tokens) - n - 2; % the number of production
            tokens{end} = str2double(tokens{end}); % reaction rate
            % find catalyst
            isCatalyst = [contains(tokens(1:end-1), '(');false];
            if nnz(isCatalyst) == 0 % if there is no catalyst,
                reaction_obj.AddReaction(n, m, tokens(:).'); % just add
            else % if there is catalyst
                if nnz(isCatalyst(n+1:end))
                    error('Produced chemical should not have catalyst');
                end
                % remove paranthesis from the catalyst
                tokens(1:n) = strrep(strrep(tokens(1:n), '(', ''), ')', '');
                % append catalyst tf table
                tokens(end + 1 : end + n) = num2cell(isCatalyst(1:n));
                % add
                reaction_obj.AddReactionWithCatalyst(n, m, tokens(:).');
            end
        case '<->' % if reversible
            n = idx - 1; % the number of source
            m = length(tokens) - n - 3; % the number of production
            tokens{end-1} = str2double(tokens{end-1}); % forward rate
            tokens{end} = str2double(tokens{end});     % backward rate
            % add
            reaction_obj.AddReversibleReaction(n, m, tokens(:).');
        otherwise
            error('Unknown reaction arrow "%s" in reaction %d', seperator, i);
    end
end