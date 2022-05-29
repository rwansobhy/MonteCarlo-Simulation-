function probablity = bionomialEquation(tossNumber,extracted,coinProbability)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
probablity=nchoosek(tossNumber,extracted)*(coinProbability)^extracted*(coinProbability)^(tossNumber-extracted);
end

