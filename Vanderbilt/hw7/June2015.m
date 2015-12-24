function [array] = June2015
array = cell(30, 3);
month = 'June';
array(:, 1) = {month};
day = cellstr(['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun']);

for i = 1:30
    array(i, 2) = {i};
    day_index = rem((i), 7);
    if day_index == 0
        array(i, 3) = {day{7}};
    else
        array(i, 3) = {day{day_index}};
    end

end

end