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
for n = 1 : size(reaction.Rate, 1)
    for m = 1 : size(reaction.Rate, 2)
        if isempty(reaction.Rate{n,m})
            continue;
        end
        format = [rate_format '*' strjoin(repmat({name_format}, 1, n),'')];
        for i = 1 : length(reaction.Rate{n,m})
            trgidx = reaction.TrgIndex{n,m}(i,:);
            srcidx = reaction.SrcIndex{n,m}(i,:);

            str = sprintf(format, reaction.Rate{n,m}(i), reaction.chemicals{srcidx});
            for j = 1 : m
                odes{trgidx(j)} = [odes{trgidx(j)}, str];
            end
            if (strcmp(str(2), '+')), str(2) = '-';
            else, str(2) = '+';
            end
            for j = 1 : n
                odes{srcidx(j)} = [odes{srcidx(j)}, str];
            end
        end
    end
end
for n = 1 : size(reaction.RateWithCatalyst, 1)
    for m = 1 : size(reaction.RateWithCatalyst, 2)
        if isempty(reaction.RateWithCatalyst{n,m})
            continue;
        end
        format = [rate_format '*' strjoin(repmat({name_format}, 1, n),'')];
        for i = 1 : length(reaction.RateWithCatalyst{n,m})
            trgidx = reaction.TrgIndexWithCatalyst{n,m}(i,:);
            srcidx = reaction.SrcIndexWithCatalyst{n,m}(i,:);
            isNotCatalyst = reaction.IsNOTCatalyst{n,m}(i,:);

            str = sprintf(format, reaction.RateWithCatalyst{n,m}(i), reaction.chemicals{srcidx});
            for j = 1 : m
                odes{trgidx(j)} = [odes{trgidx(j)}, str];
            end
            if (strcmp(str(2), '+')), str(2) = '-';
            else, str(2) = '+';
            end
            for j = 1 : n
                if isNotCatalyst(j)
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