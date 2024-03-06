% Get matlabFunction using symbolic computation.
% This can take a while, but function call will be faster
function dydt = simplifiedReaction(reaction)
y = sym('y', reaction.numChemical);
t = sym('t');
dydt = sym(accumarray(reaction.InjectionIndex, ...
    reaction.InjectionRate, ...
    [reaction.numChemical, 1]));
for n = 1 : size(reaction.Rate, 1)
    for m = 1 : size(reaction.Rate, 2)
        if isempty(reaction.Rate{n, m})
            continue;
        end
        current_reactions = sym(reaction.Rate{n, m});
        for i = 1 : m
            current_reactions = current_reactions ...
                .*y(reaction.SrcIndex{n, m}(:,i));
        end
        for i = 1 : length(current_reactions)
            for trg = reaction.TrgIndex{n, m}(i, :)
                dydt(trg) = dydt(trg) + current_reactions(i);
            end
            for src = reaction.SrcIndex{n, m}(i, :)
                dydt(src) = dydt(src) - current_reactions(i);
            end
        end
    end
end
for n = 1 : size(reaction.RateWithCatalyst, 1)
    for m = 1 : size(reaction.RateWithCatalyst, 2)
        if isempty(reaction.RateWithCatalyst{n, m})
            continue;
        end
        current_reactions = sym(reaction.RateWithCatalyst{n, m});
        for i = 1 : m
            current_reactions = current_reactions ...
                .*y(reaction.SrcIndexWithCatalyst{n, m}(:,i));
        end
        for i = 1 : length(current_reactions)
            for trg = reaction.TrgIndexWithCatalyst{n, m}(i, :)
                dydt(trg) = dydt(trg) + current_reactions(i);
            end
            for src = reaction.SrcIndexWithCatalyst{n, m}(i, reaction.IsNOTCatalyst{n, m}(i,:))
                dydt(src) = dydt(src) - current_reactions(i);
            end
        end
    end
end
dydt = matlabFunction(dydt, 'vars', {t, y});
end