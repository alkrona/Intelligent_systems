
function y = simple_objective(x)
%SIMPLE_OBJECTIVE Objective function for PATTERNSEARCH solver

%   Copyright 2004 The MathWorks, Inc.  

x1 = x(1);
x2 = x(2);

y = -3.*x1.^3 + 2.*x2.^3 + 2.*x1.^2 -5.*x2.^2 + 2.*x1.*x2 + x1 -2.*x2 +10;