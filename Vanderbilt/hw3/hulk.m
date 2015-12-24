function [H] = hulk(v)
H = zeros(length(v), 3);
vt = v';
H(:, 1) = vt;
H(:, 2) = vt.^2;
H(:, 3) = vt.^3;
end