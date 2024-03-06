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
    %   {source_chemical1_names, '->' produced_chemical_name, ..., rate; ...}
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
    %   reaction.AddReaction(1, 1, { ... produce 1 chem from 1 chem
    %       'A', '->', 'B', 1.0; ... A -> B with rate 1
    %       'B', '->', 'C', 2.0; ... B -> C with rate 2
    %       });
    %   reaction.AddReaction(2, 1, { ... produce 1 chem from 2 chem
    %       'A', 'A', '->', 'B', 1.0; ... 2A -> B with rate 1.0
    %       });
    %   % reaction with one acting as a catalysts
    %   reaction.AddReactionWithCatalysts(1, 2, { ... produce 1 chem from 2 chem
    %       'A', 'B', '->', 'C', 1.0, true, false; ... A + (B) -> C + (B)
    %       });
    %   % equivalently,
    %   reaction.AddReaction(2, 2, { ... produce 2 chem from 2 chem
    %       'A', 'B', '->', 'C', 'B', 1.0; ... 
    %       });
    %   reaction.show() % print all reactions on the command window
    %   reaction.show('%.4f') % print all reactions with formatted rate
    %   reaction.show_ode() % print ODEs
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
        % A1 + ... + An <- S1 + ... + Sm with rate k
        % d[Ai]/dt += k[S1]...[Sn]
        % d[Si]/dt -= k[S1]...[Sn]
        TrgIndex = {}
        SrcIndex = {}
        Rate     = {}
        % A <- S1 + ... + Sn with rate k
        % d[A]/dt  += k[S1]...[Sn]
        % d[Si]/dt -= k[S1]...[Sn] when Si is not a catalyst
        TrgIndexWithCatalyst = {}
        SrcIndexWithCatalyst = {}
        RateWithCatalyst     = {}
        IsNOTCatalyst           = {}
    end
    methods
        % Create a reaction with given chemical names
        function reaction = Reaction(chemicals)
            if (isMATLABReleaseOlderThan("R2022b"))
                error('R2022b or newer MATLAB ver. is required');
            end

            chemicals = chemicals(:).';
            for i = 1 : length(chemicals)
                if ~isnan(str2double(chemicals{i}(1))) && (chemicals{i}(1) ~='i')
                    % if string starts with numeric value
                    error('Chemical name should not start with numeric value');
                end
            end
            reaction.ID = dictionary(string(chemicals), 1:length(chemicals));
            reaction.numChemical = numel(chemicals);
            reaction.chemicals = chemicals;
        end

        % Add chemical injection (A injected with rate k)
        % targ_rate = {A, k1; ...}
        function AddInjection(reaction, targ_rate)
            if size(targ_rate, 2) ~= 2
                error('Input must be (# of reaction) x 2, where each columns are: targ, rate')
            end
            reaction.InjectionIndex = [reaction.InjectionIndex; reaction.ID(targ_rate(:,1))];
            reaction.InjectionRate = [reaction.InjectionRate; cell2mat(targ_rate(:,3))];
        end

        % Add reaction A1 + ... + An -> B1 + ... + Bm where
        % targ_rate = {A1, ..., An, '->', B1, ..., Bm, k; ...} with n,m > 0
        function AddReaction(reaction, n, m, targs_srcs_rate)
            if n + m ~= size(targs_srcs_rate, 2) - 2
                error('Input order and the reaction scheme do not match')
            end
            if ~all(strcmp(targs_srcs_rate(:,n+1), '->'))
                error('Reaction %d is inconsistent', find(~strcmp(targs_srcs_rate(:,n+1), '->')));
            end
            if any(size(reaction.Rate) < [n, m]) || isempty(reaction.Rate{n, m})
                reaction.SrcIndex{n,m} = reaction.ID(targs_srcs_rate(:,1:n));
                reaction.TrgIndex{n,m} = reaction.ID(targs_srcs_rate(:,n+2:end-1));
                reaction.Rate{n,m} = cell2mat(targs_srcs_rate(:,end));
            else
                reaction.SrcIndex{n,m} = [reaction.SrcIndex{n,m}; reaction.ID(targs_srcs_rate(:,1:n))];
                reaction.TrgIndex{n,m} = [reaction.TrgIndex{n,m}; reaction.ID(targs_srcs_rate(:,n+2:end-1))];
                reaction.Rate{n,m} = [reaction.Rate{n,m}; cell2mat(targs_srcs_rate(:,end))];
            end
        end

        % Add reaction A1 + ... + An <-> B1 + ... + Bm where
        % targ_rate = {A1, ..., An, '<->', B1, ..., Bm, k_AB, k_BA; ...} with n,m > 0
        function AddReversibleReaction(reaction, n, m, targs_srcs_rates)
            if n + m ~= size(targs_srcs_rates, 2) - 3
                error('Input order and the reaction scheme do not match')
            end
            if ~all(strcmp(targs_srcs_rates(:,n+1), '<->'))
                error('Reaction %d is inconsistent', find(~strcmp(targs_srcs_rates(:,n+1), '<->')));
            end
            targs_srcs_rates(:, n+1) = strrep(targs_srcs_rates(:, n+1), '<->', '->');
            reaction.AddReaction(n, m, targs_srcs_rates(:,1:end-1)); % forward
            reaction.AddReaction(m, n, targs_srcs_rates(:, [n+2:n+m+1, n+1, 1:n, end])); % backward
        end

        % Add reaction A1 + ... + An -> B1 + ... + Bm where
        % targ_rate = {A1, ..., An '->' B1, ..., Bn, k, tf1, ..., tfn; ...}
        function AddReactionWithCatalyst(reaction, n, m, targ_srcs_rate_catalysts)
            if 2*n + m ~= size(targ_srcs_rate_catalysts, 2) - 2
                error('Input order and the reaction scheme do not match')
            end
            if n == 0 % if it is injection,
                error('Reaction with Catalysts cannot be zero-order reaction')
            end
            if ~all(strcmp(targ_srcs_rate_catalysts(:,n+1), '->'))
                error('Reaction %d is inconsistent', find(~strcmp(targ_srcs_rate_catalysts(:,n+1), '->')));
            end
            if any(size(reaction.RateWithCatalyst) < [n, m]) || isempty(reaction.RateWithCatalyst{n, m})
                reaction.SrcIndexWithCatalyst{n,m} = reaction.ID(targ_srcs_rate_catalysts(:,1:n));
                reaction.TrgIndexWithCatalyst{n,m} = reaction.ID(targ_srcs_rate_catalysts(:,n+2:n+m+1));
                reaction.RateWithCatalyst{n,m} = cell2mat(targ_srcs_rate_catalysts(:,n+m+2));
                reaction.IsNOTCatalyst{n,m} = ~cell2mat(targ_srcs_rate_catalysts(:,n+m+3 : end));
            else
                reaction.SrcIndexWithCatalyst{n,m} = [reaction.SrcIndexWithCatalyst{n,m}; reaction.ID(targ_srcs_rate_catalysts(:,1:n))];
                reaction.TrgIndexWithCatalyst{n,m} = [reaction.TrgIndexWithCatalyst{n,m}; reaction.ID(targ_srcs_rate_catalysts(:,n+2:n+m+1))];
                reaction.RateWithCatalyst{n,m} = [reaction.RateWithCatalyst{n,m}; cell2mat(targ_srcs_rate_catalysts(:,n+m+2))];
                reaction.IsNOTCatalyst{n,m} = [reaction.IsNOTCatalyst{n,m}; ~cell2mat(targ_srcs_rate_catalysts(:,n+m+3 : end))];
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

            % d[trg_i]/dt += k*[src1]...[srcN]
            for n = 1 : size(reaction.Rate, 1)
                for m = 1 : size(reaction.Rate, 2)
                    if isempty(reaction.Rate{n, m})
                        continue;
                    end
                    current_reactions = reaction.Rate{n, m};
                    for i = 1 : n
                        current_reactions = current_reactions ...
                            .*y(reaction.SrcIndex{n, m}(:,i));
                    end
                    % add reaction to the target
                    z = z + accumarray(...
                        reaction.TrgIndex{n, m}(:), ...
                        repmat(current_reactions, m, 1), ...
                        [reaction.numChemical, 1]);
                    % subtract reaction from the source
                    z = z - accumarray(...
                        reaction.SrcIndex{n, m}(:), ...
                        repmat(current_reactions, n, 1), ...
                        [reaction.numChemical, 1]);
                end
            end

            % d[trg_i]/dt += k*[src1]...[srcN]
            for n = 1 : size(reaction.RateWithCatalyst, 1)
                for m = 1 : size(reaction.RateWithCatalyst, 2)
                    rate = reaction.RateWithCatalyst{n,m};
                    if isempty(rate)
                        continue;
                    end
                    trg = reaction.TrgIndexWithCatalyst{n,m};
                    src = reaction.SrcIndexWithCatalyst{n,m};
                    current_reactions = rate;
                    for i = 1 : n
                        current_reactions = current_reactions ...
                            .*y(src(:,i));
                    end
                    % add reaction to the target
                    z = z + accumarray(...
                        trg(:), ...
                        repmat(current_reactions, m, 1), ...
                        [reaction.numChemical, 1]);
                    % subtract reaction from 
                    z = z - accumarray(...
                        src(:), ...
                        repmat(current_reactions, n, 1).*reaction.IsNOTCatalyst{n,m}(:), ...
                        [reaction.numChemical, 1]);
                end
            end
        end
    end
end