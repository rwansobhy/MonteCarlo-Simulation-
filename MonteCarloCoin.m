clear, clc, close all
%%
%%%%%% initialization%%%%%%
N = 1e7;%number of runs
tossNumber=3;
occu_heads=zeros(1,N); % preallocationg of vector
%%
%%%%%%% run the simulation%%%%%%%
[two_heads,occ_heads]=monteCarlo(N,tossNumber);
%%
%%%%%%%probablity of two heads%%%%%%
estimatedProbability= two_heads/N;    %estmated probablity from montecarlo simulation
theoriticalProbability=bionomialEquation(tossNumber,2,0.5); %bionomial distribution
err_in_twoheads = computeError(estimatedProbability,theoriticalProbability);%compute error
disp(['The estimated probablity of two heads value is ' num2str(estimatedProbability)])
disp(['The error of the estimation is ' num2str(err_in_twoheads) ' %'])
%%
%%%%%%%%%average number of heads%%%%%%%%%%
theoriticalAverageNumber=avg_no_of_heads(tossNumber,0.5);
estimatedAverage=estimatedMean(occ_heads,N);
err_in_mean=computeError(estimatedAverage,theoriticalAverageNumber);
disp(['The estimated mean of heads value is ' num2str(estimatedAverage)])
disp(['The error of the estimation is ' num2str(err_in_mean) ' %'])
commandwindow