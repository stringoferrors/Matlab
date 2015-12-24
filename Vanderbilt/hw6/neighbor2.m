function [diff] = neighbor2(v)
dim = size(v);
diff = zeros(1, (dim(2) - 1));
for j=1:dim(1)
    for i = 1:(length(v) - 1)
        diff(j, i) = abs(v(j, i)-v(j, (i+1)));
    end
end
end

% errors with 