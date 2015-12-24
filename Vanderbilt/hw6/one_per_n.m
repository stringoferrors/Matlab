function [n] = one_per_n(x)
fracSum = 0;
n = -1;
for i=1:10000
    fracSum = fracSum + (1/i);
    if fracSum >= x
        n = i;
        break
    end
end

end
