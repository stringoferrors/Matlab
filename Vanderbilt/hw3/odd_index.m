function [M_odd] = odd_index(M)
 A = size(M);
 remove_rows = 2:2:A(1);
 remove_columns = 2:2:A(2);
 M(remove_rows, :) = [];
 M(:, remove_columns) = [];
 M_odd = M;
end