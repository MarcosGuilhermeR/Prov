clc;
clear;
close all;

CostFunction=@(x) parabolas(x);      % Cost Function

nVar = 1; %Number of Decision Variables
varSize=[1 nVar];   % Size of Decision Variables Matrix

varMin = -17;
varMax = 15;

MaxIt=100;      % Maximum Number of Iterations

nPop=3;        % Population Size

empty_individual.position=[];
empty_individual.cost=[];
empty_individual.rank=[];
empty_individual.dominationSet=[];
empty_individual.dominatedCount=[];
empty_individual.crowdingDistance=[];

pop=repmat(empty_individual,nPop,1);

for i=1:nPop
    
    pop(i).position=unifrnd(varMin,varMax,varSize);
    
    pop(i).cost=CostFunction(pop(i).position);
    
end

% Non-Dominated Sorting
[pop, F]=nonDominatedSorting(pop);




