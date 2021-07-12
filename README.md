# `differentiate` [![View Numerical Differentiation (differentiate) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate)

Numerical differentiation of data (i.e. arrays).


## Syntax

`df = differentiate(f,x)`\
`df = differentiate(f,x,x_star)`


## Description

`df = differentiate(f,x)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> over a domain. `x` is a vector of points defining the domain, and `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to everry point in `x`. `x` and `f` can also be though of as the data set <img src="https://latex.codecogs.com/svg.latex?\mathbf{f}\textrm{&space;vs.&space;}\mathbf{x}" title="\mathbf{f}\textrm{ vs. }\mathbf{x}" />.
            
`df = differentiate(f,x,x_star)` returns the derivative of the function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> at a specified point <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> (or set of points <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />). `x` is a vector of points defining the domain, `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to every point in `x`, and `x_star` is either a scalar <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> or vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> storing the point(s) where we wish to evaluate the derivative of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />.


## Additional Notes

- This function is the equivalent of `trapz` and `cumtrapz` for numerical differentiation.
- This function only performs differentiation on arrays. To differentiate a function given as a function handle, a workaround is to evaluate the function over an interval defined by the array `x`, and then pass the evaluations of the function to `differentiate`.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
