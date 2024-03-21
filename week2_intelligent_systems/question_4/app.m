ObjectiveFunction = @simple_objective;
lb = [-3 -5]; %lower bound
ub = [ 2 3]; % upper bound
A = [2 ,3; 5,-2;-1,-1];
b=[8;2;6];

nvars = 2;
rng default % For reproducibility
options = optimoptions("ga",'PlotFcn',{@gaplotbestf,@gaplotmaxconstr}, ...
    'Display','iter');
[x,fval] = ga(ObjectiveFunction,nvars,A,b,[],[],lb,ub,[],options);
