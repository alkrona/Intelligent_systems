
function y = simple_objective(x)
%SIMPLE_OBJECTIVE Objective function for PATTERNSEARCH solver

%   Copyright 2004 The MathWorks, Inc.  

x1 = x(1);
x2 = x(2);
y = x1.*cos(2*pi.*x2) + x2.*sin(2*pi.*x1);