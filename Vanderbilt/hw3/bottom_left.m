function [nbyn] = bottom_left(N, n)
    NSize = size(N);
    croprows = 1:(NSize(1) - n);
    N(:, (n+1):end) = [];
    N(croprows, :) = [];
    nbyn = N;
end