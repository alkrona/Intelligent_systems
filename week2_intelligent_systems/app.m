ObjectiveFunction = @simple_objective;
lb = [0 0]; %lower bound
ub = [ 1 13]; % upper bound
ConstraintFunction = @simple_constraint;
nvars = 2;
rng default % For reproducibility
options = optimoptions("ga",'PlotFcn',{@gaplotbestf,@gaplotmaxconstr}, ...
    'Display','iter');
[x,fval] = ga(ObjectiveFunction,nvars,[],[],[],[],lb,ub,ConstraintFunction,options);
