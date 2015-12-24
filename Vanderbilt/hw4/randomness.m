function [M] = randomness(limit, n, m)
M = 1 + floor(rand(n, m)*(limit));
end