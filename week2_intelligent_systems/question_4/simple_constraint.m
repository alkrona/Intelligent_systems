function [c, ceq] = simple_constraint(x)
%SIMPLE_CONSTRAINT Nonlinear inequality constraints.

%   Copyright 2005-2007 The MathWorks, Inc.


c = [ 
    5*x(1) -2*x(2) -2;
    2*x(1) + 3*x(2) -8;
    x(1) + x(2) +6];

% No nonlinear equality constraints:
ceq = [];