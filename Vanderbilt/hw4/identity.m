function [M] = identity(n)
%M = eye(n);
M = zeros(n);
M(1:n+1:end)=1;

end