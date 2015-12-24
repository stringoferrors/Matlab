function [result] = replace(a, c1, c2)

result = cell(length(a), 1);

for i = 1:length(a)
    numbers = double(char(a(i)));
    numbers(numbers==double(c1)) = double(c2);
    result(i) = {char(numbers)};
end

end