function [row] = square_test(n)
t = linspace(0,4*pi,1001)';
%range = 1:n;
row = zeros(1001, 1);
A = (sin((2*n - 1)*t))/(2*n - 1);
row = A;
end