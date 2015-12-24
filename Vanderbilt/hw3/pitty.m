function [c] = pitty(ab)
sqab = ab.^2;
sqc = sum(sqab, 2);
c = sqrt(sqc);
end
