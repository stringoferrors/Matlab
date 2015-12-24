function [board] = checkerboard(n, m)
board = zeros(n, m);
board(2:2:n, 2:2:m) = 1;
board(1:2:n, 1:2:m) = 1;
end