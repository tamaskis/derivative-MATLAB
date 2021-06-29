
%
% DISCRETE (i.e. "x" and "f" are vectors, where "f" stores the evaluation
% of f(x) at every point in the vector "x"):
%
%   df = differentiate(f,x) returns the derivative of a function f(x) over
%   a domain. "x" is a vector of points defining the domain, and "f" is the
%   vector storing the evaluation of f(x) corresponding to every point in 
%   "x". "x" and "f" can also be thought of as the data set f vs. x.
%
%   df = differentiate(f,x,x_star) returns the derivative of the function
%   f(x) evaluated at a specified point (or set of points) x*. "x" is a 
%   vector of points defining the domain, "f" is the vector storing the 
%   evaluation of f(x) corresponding to every point in "x", and "x_star" is
%   a scalar or vector storing the point(s) x* where we wish to evaluate 
%   the derivative of f(x).
%
% CONTINUOUS (i.e. "f" is a function handle that defines f(x)):
%
%   [df,x] = differentiate(f,[a,b]) returns the derivative of a function
%   f(x) over a domain. "f" specifies the function handle for f(x), while 
%   "a" and "b" are the lower and upper bounds (i.e. x = a and x = b) of 
%   the domain. "df" is a vector storing the evaluations of the derivative
%   corresponding to the points in "x". This syntax defaults to a grid 
%   spacing of dx=(b-a)/1000.
%
%   [df,x] = differentiate(f,[a,b],dx) returns the derivative of a function
%   f(x) over the domain [a,b]. "f" specifies the function handle for f(x),
%   "a" and "b" are the lower and upper bounds (i.e. x = a and x = b) of 
%   the domain, and "dx" is the grid spacing. "df" is a vector storing the 
%   evaluations of the derivative corresponding to the points in "x".
%
%   df = differentiate(f,x_star) returns the derivative of a function f(x)
%   evaluated at a specified point (or set of points) x*. "f" specifies the
%   function handle for f(x) and "x_star" is a scalar or vector storing the
%   point(s) x* at which to differentiate. This syntax defaults to a grid 
%   spacing of dx=10000*eps, where "eps" is the machine epsilon (i.e. 
%   smallest possible nonzero number).
%
%   df = differentiate(f,x_star,dx) returns the derivative of a function 
%   f(x) evaluated at a specified point (or set of points) x*. "f" 
%   specifies the function handle for f(x), "x_star" is a scalar or vector 
%   storing the point(s) x* at which to differentiate, and "dx" specifies
%   the grid spacing.
%
% NOTE: The syntaxes involving "x_star" do NOT work when x* is a vector of 
%       length 2 due to the logic of the code. Therefore, if you wish to 
%       evaluate the derivative at two specific points, then you should add
%       a third "dummy" point to the x* vector. For example, if you wanted
%       to evaluate a derivative at x = 5 and x = 7, you should define 
%       x* = (5,7,0)^T (where 0 serves as the dummy variable) and NOT as
%       x* = (5,7)^T. You can then just discard the result you get for
%       x = 0. This is demonstrated in EXAMPLES.m.
%
% See also diff, gradient
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate
% GitHub: https://github.com/tamaskis/differentiate-MATLAB
%
% Copyright (c) 2021 Tamas Kis
% Last Update: 2021-04-01



%% FUNCTION

% INPUT (DISCRETE): f - vector of function evaluations over discretized
%                       domain
%                   x1 - vector "x" storing discretized domain
%                   x2 - (OPTIONAL) scalar OR vector "x_star" representing 
%                        the points x* at which to differentiate
% INPUT (CONTINUOUS): func - function handle for f(x)
%                     x1 - two options:
%                           (1) [a,b] - lower and upper bounds of domain to 
%                                       differentiate over
%                           (2) x_star - point(s) x* at which to 
%                                        differentiate
%                     x2 - (OPTIONAL) grid spacing "dx"
% OUTPUT: df - derivative of f with respect to x
%               (a) over the domain "x" (where "x" is a vector storing
%                   values of the domain between a lower bound "a" and
%                   upper bound "b")
%               (b) at the point(s) x*
%         x - the point(s) at which the derivative is evaluated




%==========================================================================
%
% differentiate  Numerically evaluates the derivative of a univariate 
% function over a domain or at a specified point (or set of points).
%
%   ------------------------
%   Discrete Implementation:
%   ------------------------
%   df = differentiate(f,x)
%   df = differentiate(f,x,x_star)
%
%   --------------------------
%   Continuous Implementation:
%   --------------------------
%   [df,x] = differentiate(f,[a,b])
%   [df,x] = differentiate(f,[a,b],dx)
%   df = differentiate(f,x_star)
%   df = differentiate(f,x_star,dx)
%
% See also diff, gradient
%
% Copyright © 2021 Tamas Kis
% Last Update: 2021-06-18
%
%--------------------------------------------------------------------------
%
% MATLAB Central File Exchange: https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate
% GitHub: https://github.com/tamaskis/differentiate-MATLAB
%
% See EXAMPLES.mlx for examples and "DOCUMENTATION.pdf" for additional 
% documentation. Both of these files are included with the download.
%
%--------------------------------------------------------------------------
%
% ---------------------------------
% INPUTS (DISCRETE IMPLEMENTATION):
% ---------------------------------
%   f       - ((N+1)×1 or 1×(N+1)) vector storing evaluations of f(x)
%   x       - ((N+1)×1 or 1×(N+1)) vector of x values (discretized domain)
%   x_star  - (OPTIONAL) (p×1 or 1×p) scalar OR vector "x_star" 
%             representing the points x* at which to differentiate
%
% ----------------------------------
% OUTPUTS (DISCRETE IMPLEMENTATION):
% ----------------------------------
%   df      - ((N+1)×1, 1×(N+1), p×1, or 1×p) derivative of f(x) w.r.t. x
%             evaluated at:
%               --> all the points in x (cumulative differentiation)
%               --> all the points in x_star (point differentiation)
%
%--------------------------------------------------------------------------
%
% -----------------------------------
% INPUTS (CONTINUOUS IMPLEMENTATION):
% -----------------------------------
%   f               - (function_handle) f(x)
%   [a,b] OR x_star - (1×2) upper  and lower bounds of domain to
%                     differentiate over
%                   - (p×1 or 1×p) scalar OR vector "x_star" storing the
%                     points x* at which to differentiate
%   dx              - (OPTIONAL) (1×1) grid spacing
%
% ------------------------------------
% OUTPUTS (CONTINUOUS IMPLEMENTATION):
% ------------------------------------
%   df              - ((N+1)×1, 1×(N+1), p×1, or 1×p) derivative of 
%                         f(x) w.r.t. x evaluated at:
%
%==========================================================================
function [df,x] = differentiate(f,x1,x2)
    
    % sets up necessary parameters if using continuous implementation
    if isa(f,'function_handle')
        
        % replaces function handle "f" with function handle "func"
        func = @(x) f(x);
            
        % sets up parameters for differentiating over domain
        if length(x1) == 2
            
            % sets differentiation type
            differentiation_type = 'domain';
            
            % domain lower and upper bounds
            a = x1(1);
            b = x1(2);
            
            % sets grid spacing (defaults to grid spacing of (b-a)/1000 
            % (i.e. 10001 nodes) if not specified)
            if nargin == 2
                dx = (b-a)/1000;
            elseif nargin == 3
                dx = x2;
            end
            
            % discretizes domain
            x = (a:dx:b)';
        
            % evaluates function over discretized domain (performed using 
            % a for loop for robustness; the function passed to 
            % "differentiate" may not have been written using elementwise
            % operations)
            f = zeros(size(x));
            for i = 1:length(x)
                f(i) = func(x(i));
            end
            
        % sets up parameters for differentiating at a point
        elseif length(x1) ~= 2
            
            % sets differentiation type
            differentiation_type = 'point';
            
            % point at which to differentiate
            x_star = x1;
            
            % sets grid spacing (defaults to grid spacing of 10000*eps,
            % where "eps" is the machine epsilon (smallest number))
            if nargin == 2
                dx = 10000*eps;
            elseif nargin == 3
                dx = x2;
            end
            
            % sets x=x_star (return parameter needed)
            x = x_star;
            
        end
    
    % sets up necessary parameters if using discrete implementation
    else
        
        % stores discretized domain
        x = x1;
        
        % sets up parameters for differentiating over domain
        if nargin == 2
            
            % sets differentiation type
            differentiation_type = 'domain';
            
        % sets up parameters for differentiating at a point
        elseif nargin == 3
            
            % sets differentiation type
            differentiation_type = 'point';
            
            % point at which to differentiate
            x_star = x2;
            
            % function handle for evaluating function at a point
            func = @(x_star) interp1(x,f,x_star,'linear','extrap');
            
            % sets grid spacing
            dx = min(diff(x));
            
        end
        
    end
    
    % differentiates over domain
    if strcmp(differentiation_type,'domain')
        
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
        
    % differentiates at a point
    elseif strcmp(differentiation_type,'point')
        
        % preallocates derivative
        df = zeros(size(x_star));
        
        % evaluates derivative at every point in x* using central diff.
        for i = 1:length(x_star)
            df(i) = (func(x_star(i)+dx)-func(x_star(i)-dx))/(2*dx);
        end
        
    end
    
end