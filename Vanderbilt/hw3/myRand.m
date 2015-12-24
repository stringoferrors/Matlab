function [a, s]=myRand(low, high)
a = low + rand(3, 4)*high;
s = sumAllElements(a);

function summa = sumAllElements(M)
global v
v = M(:);
summa = sum(v);