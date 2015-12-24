function [output] = sparse_array_out(array, name)

% Obtaining the vital statistics
dim = size(array);
non_zero = sum(sum(array ~= 0));
numbers = [dim(1) dim(2) non_zero];
[A B C] = find(array);
data = uint32([A B C]);
header = uint32(numbers);

% writing to the file
file_name = strcat(name, '.txt');
fileID = fopen(file_name, 'w');
fprintf(fileID, '%d %d %d\n', header);
fprintf(fileID, '%d %d %d\n', data);
fclose(fileID);

% file error handling
if fileID == -1
    output = true;
else
    output = false;
end

end