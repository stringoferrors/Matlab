function [str] = integerize(A)

if max(max(A)) < (double(intmax('uint8')) + 1)
    str = 'uint8';
elseif (double(intmax('uint8')))  < max(max(A)) && (double(intmax('uint16')) + 1) > max(max(A))
    str = 'uint16';
elseif (double(intmax('uint16'))) < max(max(A)) && max(max(A)) < (double(intmax('uint32')) + 1)
    str = 'uint32';
elseif (double(intmax('uint32')))  < max(max(A)) && max(max(A)) < (double(intmax('uint64')) + 1)
    str = 'uint64';
else
    str = 'NONE';
end

end