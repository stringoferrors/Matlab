function [B, C] = separate_by_two(A)

trA = reshape(A, 1, numel(A));
B = trA(rem(trA, 2) ==0);
C = trA(rem(trA, 2) ==1);
end