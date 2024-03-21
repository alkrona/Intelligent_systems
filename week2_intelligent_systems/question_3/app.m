ObjectiveFunction = @simple_objective;
lb = [-2 -2]; %lower bound
ub = [ 2 2]; % upper bound

nvars = 2;
rng default % For reproducibility
options = optimoptions("ga",'PlotFcn',{@gaplotbestf,@gaplotmaxconstr}, ...
    'Display','iter');
[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,[],options);
