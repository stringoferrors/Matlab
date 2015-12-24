function [B] = divvy(A, k)

logic = (rem(A, k)== 0);
B = A.*logic;
B = B + A.*k.*(logic==0);

end