# `differentiate` [![View Numerical Differentiation (differentiate) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate)

Numerical differentiation of data (i.e. arrays).


## Syntax

`df = differentiate(f,x)`\
`df = differentiate(f,x,x_star)`


## Description

`df = differentiate(f,x)` returns the derivative of a set of data, <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{f}" title="\mathbf{f}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `f` and `x`). `df` stores the derivative of `f` vs. `x` at every point in `x`.
            
`df = differentiate(f,x,x_star)` returns the derivative of a set of data,  <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{f}" title="\mathbf{f}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `f` and `x`), at the set of points specified by <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> (`x_star`).


## Additional Notes

- This function is the equivalent of `trapz` and `cumtrapz` for numerical differentiation.
- This function only performs differentiation on arrays. To differentiate a function given as a function handle, a workaround is to evaluate the function over an interval defined by the array `x`, and then pass the evaluations of the function to `differentiate`.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
