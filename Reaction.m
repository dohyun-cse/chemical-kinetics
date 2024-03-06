classdef Reaction < handle
    % Reaction class stores reaction equation with given chemicals and reaction
    %
    % <SYNTAX>
    %   reaction = Reaction(chemicals)
    %
    %
    % <DESCRIPTION>
    %   reaction = Reaction(chemicals) creates a storage of reactions for
    %   given chemicals. Users can add reactions by using
    %   `AddReaction(reactions)` to populate this object. Each call of
    %   `AddReaction` should have the same order (same number of sources
    %   for each reaction).
    %   `reactions` should be in the following format:
    %   {produced_chemical_name, source_chemical1_names, ..., rate; ...}
    %   If external chemical injection is given, use
    %   `AddInjection(injection)` where
    %   injection = {injected_chemical_name, rate; ...}
    %   To review the current reactions, use `show()`.
    %   After all reactions are added, `reaction.apply(x)` can be called to
    %   obtain the reaction terms, d[chemicals]/dt.
    %   where all names are given by strings, and rate is given by a
    %   numeric value.
    %   
    %   --Example:Reaction_ex1
    %
    % <USAGE>
    %   reaction = Reaction({'A', 'B', 'C'});
    %   reaction.AddReaction({
    %       'A', 'B', 1.0; ... A <- B with rate 1
    %       'B', 'C', 2.0; ... B <- C with rate 2
    %       });
    %   reaction.AddReaction({
    %       'B', 'A', 'A', 1.0; ... B <- 2A = A + A with rate 1.0
    %       });
    %   reaction.AddPowerReaction({
    %       '3B', '2A', 1.0; ... 3B <- 2A with rate 1.0
    %       });
    %   reaction.show() % print all reactions on the command window
    %   reaction.show('%.4f') % print all reactions with formatted rate
    %
    %   odefun = @(t, x) reaction.apply(x); % get d[chemicals]/dt
    %   y = ode45(odefun, [t0, tf], y0);
    %
    % <INPUT>
    %   - chemicals (cell)
    %       a cell of strings with chemical names
    %
    % <OUTPUT>
    %   - reaction (Reaction)
    %       A Reaction object.
    %

    % Copyright 2024 Dohyun Kim / CC BY-NC

    % Contact: dohyun_kim@brown.edu
    % Developed using MATLAB 2023b on Darwin 23.3.0 Darwin Kernel Version 23.3.0: Wed Dec 20 21:30:44 PST 2023;

    %%
    properties
        ID % dictionary, idx = ID(chemical)
        numChemical % the number of chemicals
        chemicals = {} % chemical names
    end
    properties (Access=private)
        % d[A]/dt += k
        hasInjection = false
        InjectionIndex = zeros(0,1) % [A; ...]
        InjectionRate     = zeros(0,1) % [k; ...]
        % A <- S1 + ... + Sn with rate k
        % d[A]/dt  += k[S1]...[Sn]
        % d[Si]/dt -= k[S1]...[Sn]
        hasReaction = false
        TrgIndex = {}
        SrcIndex = {}
        Rate     = {}
        % A <- S1 + ... + Sn with rate k
        % d[A]/dt  += k[S1]...[Sn]
        % d[Si]/dt -= k[S1]...[Sn]
        hasReactionWithCatalyst = false
        TrgIndexWithCatalyst = {}
        SrcIndexWithCatalyst = {}
        RateWithCatalyst     = {}
        IsCatalyst           = {}
        % A1 + ... + An <- S1 + ... + Sm with rate k
        % d[Ai]/dt += k[S1]...[Sn]
        % d[Si]/dt -= k[S1]...[Sn]
        hasCompReaction = false
        CompTrgIndex = {}
        CompSrcIndex = {}
        CompRate     = {}
    end
    methods
        % Create a reaction with given chemical names
        function reaction = Reaction(chemicals)
            if (isMATLABReleaseOlderThan("R2022b"))
                error('R2022b or newer MATLAB ver. is required');
            end

            if ~isa(chemicals, 'cell')
                error('chemical should be a cell of strings');
            end

            chemicals = chemicals(:).';
            for i = 1 : length(chemicals)
                if ~isnan(str2double(chemicals{i}(1))) && (chemicals{i}(1) ~='i')
                    % if string starts with numeric value
                    error('Chemical name should not start with numeric value');
                end
            end
            reaction.ID = dictionary(chemicals, 1:length(chemicals));
            reaction.numChemical = numel(chemicals);
            reaction.chemicals = chemicals;
        end

        % Add constant reaction d[A]/dt += k where
        % targ_rate = {A, k1; ...}
        function AddInjection(reaction, targ_rate)
            if size(targ_rate, 2) ~= 2
                error('Input must be (# of reaction) x 2, where each columns are: targ, rate')
            end
            reaction.hasInjection = true;
            reaction.InjectionIndex = [reaction.InjectionIndex; reaction.ID(targ_rate(:,1))];
            reaction.InjectionRate = [reaction.InjectionRate; cell2mat(targ_rate(:,3))];
        end

        % Add reaction A <- S1 + ... + Sn where
        % targ_rate = {A, S1, ..., Sn, k; ...} with n > 0
        function AddReaction(reaction, order, targ_srcs_rate)
            if order ~= size(targ_srcs_rate, 2) - 2
                error('Input order and the reaction scheme do not match.')
            end
            if order == 0 % if it is injection,
                reaction.AddInjection(targ_srcs_rate);
                return;
            end
            reaction.hasReaction = true;
            if length(reaction.Rate) < order || isempty(reaction.Rate{order})
                reaction.TrgIndex{order} = reaction.ID(targ_srcs_rate(:,1));
                reaction.SrcIndex{order} = reaction.ID(targ_srcs_rate(:,2:end-1));
                reaction.Rate{order} = cell2mat(targ_srcs_rate(:,end));
            else
                reaction.TrgIndex{order} = [reaction.TrgIndex{order}; reaction.ID(targ_srcs_rate(:,1))];
                reaction.SrcIndex{order} = [reaction.SrcIndex{order}; reaction.ID(targ_srcs_rate(:,2:end-1))];
                reaction.Rate{order} = [reaction.Rate{order}; cell2mat(targ_srcs_rate(:,end))];
            end
        end

        % Add reaction A <- S1 + ... + Sn where
        % targ_rate = {A, S1, ..., Sn, k; ...} with n > 0
        function AddReactionWithCatalyst(reaction, order, targ_srcs_rate_catalysts)
            if order ~= (size(targ_srcs_rate_catalysts, 2) - 2)/2
                error('Input order and the reaction scheme do not match.')
            end
            if order == 0 % if it is injection,
                error('Reaction with Catalysts cannot be zero-order reaction')
            end
            reaction.hasReactionWithCatalyst = true;
            if length(reaction.Rate) < order || isempty(reaction.Rate{order})
                reaction.TrgIndexWithCatalyst{order} = reaction.ID(targ_srcs_rate_catalysts(:,1));
                reaction.SrcIndexWithCatalyst{order} = reaction.ID(targ_srcs_rate_catalysts(:,2:order + 1));
                reaction.RateWithCatalyst{order} = cell2mat(targ_srcs_rate_catalysts(:,order + 2));
                reaction.IsCatalyst{order} = cell2mat(targ_srcs_rate_catalysts(:,order + 3 : end));
            else
                reaction.TrgIndexWithCatalyst{order} = [reaction.TrgIndexWithCatalyst{order}; reaction.ID(targ_srcs_rate_catalysts(:,1))];
                reaction.SrcIndexWithCatalyst{order} = [reaction.SrcIndexWithCatalyst{order}; reaction.ID(targ_srcs_rate_catalysts(:,2:order + 1))];
                reaction.RateWithCatalyst{order} = [reaction.RateWithCatalyst{order}; cell2mat(targ_srcs_rate_catalysts(:,order + 2))];
                reaction.IsCatalyst{order} = [reaction.IsCatalyst{order}; cell2mat(targ_srcs_rate_catalysts(:,order + 3 : end))];
            end
        end

        % Add reaction A1 + ... + An <- S1 + ... + Sm where
        % targ_rate = {A1, ..., An, S1, ..., Sm, k; ...} with n,m > 0
        function AddCompositeReaction(reaction, n, m, targs_srcs_rate)
            reaction.hasCompReaction = true;
            if n + m ~= size(targs_srcs_rate, 2) - 1
                error('Input order and the reaction scheme do not match')
            end
            if n == 1 && m == 0
                reaction.AddInjection(targs_srcs_rate)
                return;
            end
            if any(size(reaction.CompRate) < [n, m]) || isempty(reaction.CompRate{n, m})
                reaction.CompTrgIndex{n,m} = reaction.ID(targs_srcs_rate(:,1:n));
                reaction.CompSrcIndex{n,m} = reaction.ID(targs_srcs_rate(:,n+1:end-1));
                reaction.CompRate{n,m} = cell2mat(targs_srcs_rate(:,end));
            else
                reaction.CompTrgIndex{n,m} = [reaction.CompTrgIndex{n,m}; reaction.ID(targs_srcs_rate(:,1:n))];
                reaction.CompSrcIndex{n,m} = [reaction.CompSrcIndex{n,m}; reaction.ID(targs_srcs_rate(:,n+1:end-1))];
                reaction.CompRate{n,m} = [reaction.CompRate{n,m}; cell2mat(targs_srcs_rate(:,end))];
            end
        end

        % Show reactions
        function show(reaction, rate_format)
            if nargin == 1
                rate_format = '%.4e';
            end
            max_name_length = max(cellfun(@length, reaction.chemicals));
            name_format = ['% ' num2str(max_name_length) 's'];
            if (reaction.hasInjection)
                for i = 1 : length(reaction.InjectionRate)
                    fprintf(['(rate = ' rate_format ') ' name_format '\n'], ...
                        reaction.InjectionRate(i), ...
                        reaction.chemicals{reaction.InjectionIndex});
                end
            end
            if (reaction.hasReaction)
                for order = 1 : length(reaction.Rate)
                    if isempty(reaction.Rate{order})
                        continue;
                    end
                    format = strjoin({ ...
                        '(rate = ' rate_format ') ', ...
                        name_format ' <- ', ...
                        strjoin(repmat({name_format}, 1, order), ' + '), ...
                        '\n'});
                    for i = 1 : length(reaction.Rate{order})
                        fprintf(format, ...
                            reaction.Rate{order}(i), ...
                            reaction.chemicals{reaction.TrgIndex{order}(i)}, ...
                            reaction.chemicals{reaction.SrcIndex{order}(i, :)});
                    end
                end
            end
            if (reaction.hasReactionWithCatalyst)
                for order = 1 : length(reaction.RateWithCatalyst)
                    if isempty(reaction.RateWithCatalyst{order})
                        continue;
                    end
                    format = strjoin({ ...
                        '(rate = ' rate_format ') ', ...
                        name_format ' <- ', ...
                        strjoin(repmat({name_format}, 1, order), ' + '), ...
                        ' /\tCatalysts: ', ...
                        strjoin(repmat({name_format}, 1, nnz(reaction.IsCatalyst{order}(i,:))), ', '), ...
                        '\n'});
                    for i = 1 : length(reaction.RateWithCatalyst{order})
                        fprintf(format, ...
                            reaction.RateWithCatalyst{order}(i), ...
                            reaction.chemicals{reaction.TrgIndexWithCatalyst{order}(i)}, ...
                            reaction.chemicals{reaction.SrcIndexWithCatalyst{order}(i, :)}, ...
                            reaction.chemicals{reaction.SrcIndexWithCatalyst{order}(i, reaction.IsCatalyst{order}(i,:))});
                    end
                end
            end
            if (reaction.hasCompReaction)
                for n = 1 : size(reaction.CompRate, 1)
                    for m = 1 : size(reaction.CompRate, 2)
                        if isempty(reaction.CompRate{n,m})
                            continue;
                        end
                        format = strjoin({ ...
                            '(rate = ' rate_format ') ', ...
                            strjoin(repmat({name_format}, 1, n), ' + ') ' <- ', ...
                            strjoin(repmat({name_format}, 1, m), ' + '), ...
                            '\n'});
                        for i = 1 : length(reaction.CompRate{n,m})
                            fprintf(format, ...
                                reaction.CompRate{n,m}(i), ...
                                reaction.chemicals{reaction.CompTrgIndex{n,m}(i)}, ...
                                reaction.chemicals{reaction.CompSrcIndex{n,m}(i, :)});
                        end
                    end
                end
            end
        end

        function show_ode(reaction, rate_format)
            if nargin == 1
                rate_format = ' %+.4e';
            end
            max_name_length = max(cellfun(@length, reaction.chemicals));
            name_format = ['[% ' num2str(max_name_length) 's]'];
            odes = cell(reaction.numChemical, 1);
            for i = 1 : reaction.numChemical
                odes{i} = sprintf(['d' name_format '/dt = '], reaction.chemicals{i});
            end
            if (reaction.hasReaction)
                for order = 1 : length(reaction.Rate)
                    if isempty(reaction.Rate{order})
                        continue;
                    end
                    format = [rate_format '*' strjoin(repmat({name_format}, 1, order),'')];
                    for i = 1 : length(reaction.TrgIndex{order})
                        trgidx = reaction.TrgIndex{order}(i);
                        srcidx = reaction.SrcIndex{order}(i,:);

                        str = sprintf(format, reaction.Rate{order}(i), reaction.chemicals{srcidx});
                        odes{trgidx} = [odes{trgidx}, str];
                        if (strcmp(str(2), '+')), str(2) = '-';
                        else, str(2) = '+';
                        end
                        for j = 1 : order
                            odes{srcidx(j)} = [odes{srcidx(j)}, str];
                        end
                    end
                end
            end
            if (reaction.hasReactionWithCatalyst)
                for order = 1 : length(reaction.RateWithCatalyst)
                    if isempty(reaction.RateWithCatalyst{order})
                        continue;
                    end
                    format = [rate_format '*' strjoin(repmat({name_format}, 1, order),'')];
                    for i = 1 : length(reaction.TrgIndexWithCatalyst{order})
                        trgidx = reaction.TrgIndexWithCatalyst{order}(i);
                        srcidx = reaction.SrcIndexWithCatalyst{order}(i,:);
                        isCatalyst = reaction.IsCatalyst{order}(i,:);

                        str = sprintf(format, reaction.RateWithCatalyst{order}(i), reaction.chemicals{srcidx});
                        odes{trgidx} = [odes{trgidx}, str];
                        if (strcmp(str(2), '+')), str(2) = '-';
                        else, str(2) = '+';
                        end
                        for j = 1 : order
                            if ~isCatalyst(j)
                                odes{srcidx(j)} = [odes{srcidx(j)}, str];
                            end
                        end
                    end
                end
            end
            for i = 1 : reaction.numChemical
                disp([odes{i}]);
            end
        end

        function y = setInitialCondition(reaction, names_values)
            idx = reaction.ID(names_values(:,1));
            y = zeros(size(idx));
            y(idx) = cell2mat(names_values(:,2));
        end

        % Get d[chemicals]/dt
        function z = apply(reaction, y)
            % d[chemicals]/dt += k
            z = accumarray(reaction.InjectionIndex, ...
                reaction.InjectionRate, ...
                [reaction.numChemical, 1]);

            % d[chemicals]/dt += k*[src1]...[srcN]
            for n = 1 : length(reaction.Rate)
                if isempty(reaction.Rate{n})
                    continue;
                end
                current_reactions = reaction.Rate{n};
                for i = 1 : n
                    current_reactions = current_reactions ...
                        .*y(reaction.SrcIndex{n}(:,i));
                end
                z = z + accumarray(...
                    reaction.TrgIndex{n}, ...
                    current_reactions, ...
                    [reaction.numChemical, 1]);
                for i = 1 : n
                    z = z + accumarray(...
                        reaction.SrcIndex{n}(:,i), ...
                        -current_reactions, ...
                        [reaction.numChemical, 1]);
                end
            end

            % d[chemicals]/dt += k*[src1]...[srcN]
            for n = 1 : size(reaction.CompRate, 1)
                for m = 1 : size(reaction.CompRate, 2)
                    if isempty(reaction.CompRate{n, m})
                        continue;
                    end
                    current_reactions = reaction.CompRate{n, m};
                    for i = 1 : m
                        current_reactions = current_reactions ...
                            .*y(reaction.CompSrcIndex{n, m}(:,i));
                    end
                    for i = 1 : n
                        z = z + accumarray(...
                            reaction.CompTrgIndex{n, m}(:,i), ...
                            current_reactions, ...
                            [reaction.numChemical, 1]);
                    end
                    for i = 1 : m
                        z = z + accumarray(...
                            reaction.CompSrcIndex{n, m}(:,i), ...
                            -current_reactions, ...
                            [reaction.numChemical, 1]);
                    end
                end
            end

            % d[chemicals]/dt += k*[src1]...[srcN]
            for n = 1 : length(reaction.RateWithCatalyst)
                if isempty(reaction.RateWithCatalyst{n})
                    continue;
                end
                current_reactions = reaction.RateWithCatalyst{n};
                for i = 1 : n
                    current_reactions = current_reactions ...
                        .*y(reaction.SrcIndexWithCatalyst{n}(:,i));
                end
                z = z + accumarray(...
                    reaction.TrgIndexWithCatalyst{n}, ...
                    current_reactions, ...
                    [reaction.numChemical, 1]);
                isCatalyst = reaction.IsCatalyst{n};
                for i = 1 : n
                    if ~isCatalyst(i)
                        z = z + accumarray(...
                            reaction.SrcIndexWithCatalyst{n}(:,i), ...
                            -current_reactions, ...
                            [reaction.numChemical, 1]);
                    end
                end
            end
        end
    end
end