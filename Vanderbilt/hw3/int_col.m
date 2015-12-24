function [v] = int_col(n)
    a = 1:n;
    a = fliplr(a);
    v = a';
    if mod(n, 2) ~= 0
        t = v(round(n/2));
        v(round(n/2)) = v(length(n));
        v(length(n))= t;
    end      
end