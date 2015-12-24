 function [s1, s2, sum] = sines(pts,amp,n1,n2)
 
if nargin < 1
    pts = 1000;
    amp = 1;
    n1 = 100;
    n2 = n1*1.05;
elseif nargin < 2
    amp = 1;
    n1 = 100;
    n2 = n1*1.05;
elseif nargin < 3;
    n1 = 100;
    n2 = n1*1.05;
elseif nargin < 4
    n2 = n1*1.05;
end

t1 = linspace(0,2*pi*n1,pts);
s1 = amp*sin(t1);

t2 = linspace(0,2*pi*n2,pts);
s2 = amp*sin(t2);
sum = s1 + s2;
 end