function [fullnumber] = dial(str)
key = '() -1234567890#*ABCDEFGHIJKLMNOPRSTUVWXY';
values = '    1234567890#*222333444555666777888999';
fullnumber =[];
for i = 1:length(str)
    [~, loc]=ismember(str(i),key);
    if loc == 0
        fullnumber =  [];
        break
    end
    relevantValue = values(loc);
    fullnumber = [fullnumber relevantValue];   
end
end