function [prime] = myprime(n)

range = 2:(n-1);
remainders = rem(n, range);
lm = min(remainders);

if lm == 0;
    prime = false;
else
    prime = true;
end
    
end