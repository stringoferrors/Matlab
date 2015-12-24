function indexes = large_elements(x)
dim = size(x);
indexes = [];
for i = 1:dim(1)
    for j=1:dim(2)
        if x(i , j) > (i + j)
            indexes = [indexes; i j];
        end
    end
end


end