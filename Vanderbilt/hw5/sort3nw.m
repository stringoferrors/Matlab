function [vector] = sort3(x, y, z)
vector = zeros(3, 1);
if x < y && x < z
    vector(1) = x;
    if y < z
        vector(2) = y;
        vector(3) = z;
    else
        vector(2) = z;
        vector(3) = y;    
    end
elseif y < x && y < z
    vector(1) = y;
    if x < z
        vector(2) = x;
        vector(3) = z;
    else
        vector(2) = z;
        vector(3) = x;
    end
elseif z < x && z < y
    vector(1) = Z;
    if x < y
        vector(2) = x;
        vector(3) = y;
    else
        vector(2) = z;
        vector(3) = y;
    end
else
    if x == z
        if z < y
            vector = [x z y];
        end
    else
        vector = [x y z];
    end
end