function [result, ll] = censor_int(cellstr, str)
index = [];
ll = strsplit(str);
for i = 1:length(cellstr)
    aa = char(cellstr(i));
    bb = strsplit(aa);
    iftrue = [];
    k = 1;
    for j = bb
        cc = strcmp(j, str);
        iftrue = [iftrue cc];
    end
    sumtr = sum(iftrue);
    index = [index sumtr];   
end
index = not(index > 0);
result = cellstr(index);
end