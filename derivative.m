%==========================================================================
%
% derivative  Numerical differentiation of data (i.e. arrays).
%
%   df = derivative(x,f)
%   df = derivative(x,f,x_star)
%
% See also diff, gradient, derivest.
%
% Copyright © 2021 Tamas Kis
% Contact: tamas.a.kis@outlook.com
% Last Update: 2021-07-12
%
%--------------------------------------------------------------------------
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-of-data-derivative
% GitHub: https://github.com/tamaskis/derivative-MATLAB
%
% See EXAMPLES.mlx for examples and "DOCUMENTATION.pdf" for additional 
% documentation. Both of these files are included with the download.
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   x       - ((N+1)×1 or 1×(N+1)) independent variable data
%   f       - ((N+1)×1 or 1×(N+1)) dependent variable data
%   x_star  - (OPTIONAL) (p×1 or 1×p) points at which to derivative
%
% -------
% OUTPUT:
% -------
%   df      - ((N+1)×1, 1×(N+1), p×1, or 1×p) derivative of f(x) w.r.t. x
%             evaluated at:
%               --> all the points in x (cumulative differentiation)
%               --> all the points in x_star (point differentiation)
%
% -----
% NOTE:
% -----
%   --> If "x_star" is not input, then "df" stores the derivative of f with
%       with respect to x at the points in "x".
%   --> N = number of data points (i.e. length of "f" and "x")
%   --> p = number of points to derivative at (i.e. length of "x_star")
%
%==========================================================================
function [df,x] = derivative(x,f,x_star)

    % determines number of subintervals
    N = length(x)-1;

    % preallocates derivative
    df = zeros(size(x));

    % derivative at lower bound using forward difference
    df(1) = (f(2)-f(1))/(x(2)-x(1));

    % derivative at upper bound using backward difference
    df(N+1) = (f(N+1)-f(N))/(x(N+1)-x(N));

    % derivatives at all other nodes using central differences
    for i = 2:N
        df(i) = (f(i+1)-f(i-1))/(x(i+1)-x(i-1));
    end
    
    % calculates derivative at specified point(s) via linear interpolation
    if nargin == 3
        df = interp1(x,df,x_star,'linear','extrap');
    end
        
end