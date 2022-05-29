function mean= avg_no_of_heads(n,probability)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
mean=0;
for i=0:n
    prop=i*bionomialEquation(n,i,probability);
    mean=mean+prop;
end

