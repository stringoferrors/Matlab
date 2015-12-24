function [dollars] = rich(coins)
pence = coins(1) + coins(2)*5 + coins(3)*10 + coins(4)*25;
dollars =  pence/100;
end