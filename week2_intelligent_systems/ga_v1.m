%% trying out GA

t = 0:1:15;
y = two_min(t);
plot(t,y)


%%

rng default % For reproducibility
options = optimoptions('ga','PlotFcn',@gaplot1drange);
options.InitialPopulationRange = [0;2];
[x,fval] = ga(@two_min_q2,1,[],[],[],[],[],[],[],options);
%% Question 2
t = 0:0.01:2;
y = two_min_q2(t);
plot(t,y)
%% Question 3 
x1 = -2:0.01:2;
x2 = -2:0.01:2;
y= two_min_q3(x1,x2);

%%
function y = two_min(x)
y = (x-11).^2;

end
%%

%%
function y = two_min_q2(x)
y = (x-0.5).^2;

end
%%
%%
function y = two_min_q3(t1,t2)
y = 

end
%%
function state = gaplot1drange(options,state,flag)
%gaplot1drange Plots the mean and the range of the population.
%   STATE = gaplot1drange(OPTIONS,STATE,FLAG) plots the mean and the range
%   (highest and the lowest) of individuals (1-D only).  
%
%   Example:
%   Create options that use gaplot1drange
%   as the plot function
%     options = optimoptions('ga','PlotFcn',@gaplot1drange);

%   Copyright 2012-2014 The MathWorks, Inc.

if isinf(options.MaxGenerations) || size(state.Population,2) > 1
    title('Plot Not Available','interp','none');
    return;
end
generation = state.Generation;
score = state.Population;
smean = mean(score);
Y = smean;
L = smean - min(score);
U = max(score) - smean;

switch flag

    case 'init'
        set(gca,'xlim',[1,options.MaxGenerations+1]);
        plotRange = errorbar(generation,Y,L,U);
        set(plotRange,'Tag','gaplot1drange');
        title('Range of Population, Mean','interp','none')
        xlabel('Generation','interp','none')
    case 'iter'
        plotRange = findobj(get(gca,'Children'),'Tag','gaplot1drange');
        newX = [get(plotRange,'Xdata') generation];
        newY = [get(plotRange,'Ydata') Y];
        newL = [get(plotRange,'Ldata') L];
        newU = [get(plotRange,'Udata') U];       
        set(plotRange,'Xdata',newX,'Ydata',newY,'Ldata',newL,'Udata',newU);
end
end
%%