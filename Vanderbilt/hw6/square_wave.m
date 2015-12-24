function [row] = square_wave(n)
t = linspace(0,4*pi,1001)';
r = 1:n;
row = zeros(1, 1001);
flipped = fliplr(r);

for i = flipped
    rowV = ((sin((2*i - 1)*t))/(2*i - 1));
    row = rowV' + row;
end

end