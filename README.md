# `differentiate` [![View Numerical Differentiation (differentiate) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate)

Numerical differentiation of data (i.e. arrays).


## Syntax

`df = differentiate(f,x)`\
`df = differentiate(f,x,x_star)`


## Description

**Discrete Implementation**

`df = differentiate(f,x)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> over a domain. `x` is a vector of points defining the domain, and `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to everry point in `x`. `x` and `f` can also be though of as the data set <img src="https://latex.codecogs.com/svg.latex?\mathbf{f}\textrm{&space;vs.&space;}\mathbf{x}" title="\mathbf{f}\textrm{ vs. }\mathbf{x}" />.
            
`df = differentiate(f,x,x_star)` returns the derivative of the function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> at a specified point <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> (or set of points <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />). `x` is a vector of points defining the domain, `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to every point in `x`, and `x_star` is either a scalar <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> or vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> storing the point(s) where we wish to evaluate the derivative of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />.


**Note**
 
The syntaxes involving `x_star` do NOT work when <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}\in\mathbb{R}^{2}" title="\mathbf{x}\in\mathbb{R}^{2}" /> due to the logic of the code. Therefore, if you wish to evaluate the derivative at two specific points, then you should add a third "dummy" point to <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />. For example, if you wanted to evaluate a derivative at <img src="https://latex.codecogs.com/svg.latex?x=5" title="x=5" /> and <img src="https://latex.codecogs.com/svg.latex?x=7" title="x=7" />, you should define <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}=(5,7,0)^{T}" title="\mathbf{x}^{*}=(5,7,0)^{T}" /> (where 0 serves as the dummy variable) and *not* <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}=(5,7)^{T}" title="\mathbf{x}^{*}=(5,7)^{T}" />. You can then just discard the result you get for <img src="https://latex.codecogs.com/svg.latex?x=0" title="x=0" />. This is demonstrated in EXAMPLES.m.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
