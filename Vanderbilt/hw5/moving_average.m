function [mA] = moving_average(x)
persistent bufferV

if length(bufferV) < 25
    bufferV = [bufferV x];
else
    bufferV(1) = [];
    bufferV = [bufferV x];
end

mA = mean(bufferV);
end