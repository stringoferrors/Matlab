function [dim] = classify(x)
A = size(x);
if A(2)==0 || A(1) == 0
    dim = -1;
elseif A(2) == 1 && A(1) == 1
    dim = 0;
elseif xor(A(1)==1, A(2)==1)
    dim = 1;
else
    dim =2;
    
    
end

end