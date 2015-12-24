function [piA, k] = approximate_pi(delta)
piA = 0;
k = -1;
while abs(piA - pi) >= delta
    k = k + 1;
    piA = piA + sqrt(12)*( (-3).^(-k)/(2*k + 1));
end

end
