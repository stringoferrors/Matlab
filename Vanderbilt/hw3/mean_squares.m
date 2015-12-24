function [mm] = mean_squares(nn)
values = 1:nn;
squares = values.^2;
mm = mean(squares);
end