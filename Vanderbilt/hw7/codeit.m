function [coded] = codeit(txt)

a = double(txt);
codeN = zeros(1, length(a));
j = 1;
for i= a
    if (i > 64 && i < 91) || (i > 96 && i < 123)
        b = 155 - i + floor(i/97)*64;
    else
        b = i;
    end
    codeN(j) = b;
    j = j + 1;
end

coded = char(codeN);

end