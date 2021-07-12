# `derivative` [![View Numerical Differentiation (differentiate) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate)

Numerical differentiation of data (i.e. arrays).


## Syntax

`df = derivative(x,f)`\
`df = derivative(x,f,x_star)`


## Description

`df = derivative(x,f)` returns the derivative of a set of data, <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{f}" title="\mathbf{f}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `f` and `x`). `df` stores the derivative of `f` vs. `x` at every point in `x`.
            
`df = derivative(x,f,x_star)` returns the derivative of a set of data, <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{f}" title="\mathbf{f}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `f` and `x`), at the set of points specified by <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> (`x_star`). `x_star` can be a scalar or a vector.


## Additional Notes

- This function is the equivalent of `trapz` and `cumtrapz` for numerical differentiation and is especially useful for estimating the derivative of the unknown underlying function (i.e. there is some underlying function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> that describes the data, but this function is unknown and we use the data set <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{f}" title="\mathbf{f}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" /> to approximate its derivative).
- If we _do_ know the underlying function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" />, then we can still use `differentiate` to estimate its derivative. We can do this by defining a set of points `x` and then populating a vector `f` with evaluations of <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> at every point in `x`. However, if the underlying function is known, `derivest` (https://www.mathworks.com/matlabcentral/fileexchange/13490-adaptive-robust-numerical-differentiation?s_tid=srchtitle) is a superior function to use.


## Examples and Additional Documentation

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   -  See "DOCUMENTATION.pdf" (included with download, also available at https://github.com/tamaskis/secant_method-MATLAB/blob/main/DOCUMENTATION.pdf) for additional documentation.
