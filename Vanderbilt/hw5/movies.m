function [binge] = movies(hr1, min1, durmin1, hr2, min2, durmin2)

startmin1 = hr1*60 + min1;
startmin2 = hr2*60 + min2;
binge = true;

if (startmin1 + durmin1) > startmin2
    binge = false;
elseif (startmin1 + durmin1 + 30) < startmin2
    binge = false;
end