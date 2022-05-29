function Average = estimatedMean(headOccurence,simulationRuns)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
total_occu=[sum(headOccurence==0) sum(headOccurence==1) sum(headOccurence==2) sum(headOccurence==3)];
possiblity_of_heads=find(total_occu)-1;
est_prop=total_occu./simulationRuns;
expected=possiblity_of_heads.*est_prop;
Average=sum(expected);
end

