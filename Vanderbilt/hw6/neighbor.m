function [diff] = neighbor(v)
dim = size(v);
if  dim(1) > 1
    diff = [];
else
    diff = zeros(1, (dim(2) - 1));
    for i = 1:(length(v) - 1)
            diff(i) = abs(v(i)-v(i+1));
    end
end
