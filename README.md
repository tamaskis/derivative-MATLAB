# `derivative` [![View Numerical Differentiation (differentiate) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/89719-numerical-differentiation-differentiate)

Numerical differentiation of data (i.e. arrays).


## Syntax

`dy = derivative(x,y)`\
`dy = derivative(x,y,x_star)`


## Description

`dy = derivative(x,y)` returns the derivative of a set of data, <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{y}" title="\mathbf{y}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `y` and `x`). `dy` stores the derivative of `y` vs. `x` at every point in `x`.
            
`dy = derivative(x,y,x_star)` returns the derivative of a set of data, <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{y}" title="\mathbf{y}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" />  (which are stored in `y` and `x`), at the set of points specified by <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> (`x_star`). `x_star` can be a scalar or a vector.


## Additional Notes

- This function is the equivalent of `trapz` and `cumtrapz` for numerical differentiation and is especially useful for estimating derivatives where the underlying function is unknown (i.e. we have some data set <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{y}" title="\mathbf{y}" /> vs. <img src="https://latex.codecogs.com/svg.latex?\inline&space;\mathbf{x}" title="\mathbf{x}" /> that describes a function <img src="https://latex.codecogs.com/svg.latex?\inline&space;y=f(x)" title="y=f(x)" />, but this underlying function <img src="https://latex.codecogs.com/svg.latex?\inline&space;f(x)" title="f(x)" /> is unknown and so we use the data set to approximate its derivative).
- If we _do_ know the underlying function <img src="https://latex.codecogs.com/svg.latex?\inline&space;y=f(x)" title="y=f(x)" />, then we can still use `derivative` to estimate its derivative. We can do this by defining a vector of points `x` and then populating a vector `y` with evaluations of <img src="https://latex.codecogs.com/svg.latex?\inline&space;y=f(x)" title="y=f(x)" /> at every point in `x`. However, in this case (where the underlying function is known), [`iderivative`](https://www.mathworks.com/matlabcentral/fileexchange/97267-numerical-differentiation-toolbox) and [`derivest`](https://www.mathworks.com/matlabcentral/fileexchange/13490-adaptive-robust-numerical-differentiation?s_tid=srchtitle) are better functions to use.


## Examples and Additional Documentation

   -  See "EXAMPLES.mlx" or the "Examples" tab on the File Exchange page for examples. 
   -  See ["Basic_Numerical_Calculus.pdf"](https://tamaskis.github.io/documentation/Basic_Numerical_Calculus.pdf) (also included with download) for the technical documentation.
