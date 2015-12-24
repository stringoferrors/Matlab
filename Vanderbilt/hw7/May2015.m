function [m] = May2015
day = cellstr(['Mon'; 'Tue'; 'Wed'; 'Thu'; 'Fri'; 'Sat'; 'Sun']);

for i = 1:31
    m(i).month = 'May';
    m(i).date = i;
    
    day_index = rem((4 + i), 7);
    if day_index == 0
        m(i).day = day{7};
    else
        m(i).day = day{day_index};
    end
end

end