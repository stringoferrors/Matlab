function [w, c] = replace_me(v, a, b, c)
if nargin < 3
    b = 0;
    c = 0;
elseif nargin < 4
    c = b;
end
w = [];
for i=1:length(v)
    if v(i) == a
        w = [w b c];
    else 
        w = [w v(i)];
    end
end