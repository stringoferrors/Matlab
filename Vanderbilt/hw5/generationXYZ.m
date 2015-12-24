function [gen] = generationXYZ(n)

if (n < 1966)
    gen = 'O';
elseif (1966 <= n && n < 1981)
    gen = 'X';
elseif (1981 <= n && n < 2000)
    gen = 'Y';
elseif (2000 <= n && n < 2013)
    gen = 'Z';
else
    gen = 'K';
end