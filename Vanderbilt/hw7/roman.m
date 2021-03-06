function [Anumber] = roman(Rnumber)
key = 'CLXVI';
values = [100, 50, 10,5,1];

[a, loc]=ismember(Rnumber,key);
if sum(ismember(a, 0)) > 0
    tot = 0;
else
    relevantValues = values(loc);
    [A, B] = mode(relevantValues);

    signt = -sign(diff(relevantValues));
    dif = [signt 1];
    dif(dif==0) = 1;
    tot = dot(dif, relevantValues);
    subadd = diff(signt);
    
    % doesn't capture 'IXX' or 'XIIIV'
    if tot > 20 || sum(ismember(subadd, 2)) == 1 || A == 1 && B > 3 || A ==5 && B > 1 ...
        || strcmp(Rnumber, 'VX') == 1 || strcmp(Rnumber,'XIIV') == 1 %|| strcmp(Rnumber,'XIIIV') == 1
        tot = 0;
    end
end
Anumber = uint8(tot);
end