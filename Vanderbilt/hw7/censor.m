function [results] = censor(cellstr, str)
a = strfind(cellstr, str);
emptyCells = cellfun(@isempty,a);
results = cellstr(emptyCells);
end