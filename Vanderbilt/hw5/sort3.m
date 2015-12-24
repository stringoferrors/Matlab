function [v] = sort3(x, y, z)

if x > y && x > z
    if y > z
        v = [z y x];
    else
        v = [y z x];
    end
elseif y > x && y > z
    if x > z
        v = [z x y];
    else
        v = [x z y];
    end
elseif z > x && z > y
    if x > y
        v = [y x z];
    else
        v = [x y z];
    end
else
    v = [x y z];
end

end