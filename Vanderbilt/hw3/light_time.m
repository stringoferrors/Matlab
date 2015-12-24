function [time, distance] = light_time(miles)

time=miles/(((3e5)/1.609)*60);
distance= miles*1.609;
end