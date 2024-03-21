ObjectiveFunction = @simple_objective;
lb = 0; %lower bound
ub = 2; % upper bound

nvars = 1;
rng default % For reproducibility
options = optimoptions("ga",'PlotFcn',{@gaplotbestf,@gaplotmaxconstr}, ...
    'Display','iter');
[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,[],options);
