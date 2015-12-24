function [mt, s] = mtable(n, m)

A = repmat(1:m, n, 1);
B = repmat(1:n, m, 1)';
mt = A.*B;
s = sum(sum(mt));
%x = 1:5
%y = 0:3
%[X Y] = meshgrid(x,y)
%B = X .* Y
end