function [twoHeads,headsNumber] = monteCarlo(simulationRuns,tossNumber)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
twoHeads=0;
headsNumber=zeros(1,simulationRuns);
for n = 1:simulationRuns
    
    % toss the coin 3 times
    x = randi([0 1], 1, tossNumber);
    toss=sum(x==0); %assuming tha heads =0 and tails=1
    headsNumber(n)=toss;
    % check if the event occurs
    if  sum(x==0)==2
        
        % find the number of occurrences
        twoHeads = twoHeads + 1;
        
    end
    
end

end

