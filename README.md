# `differentiate`

Numerically evaluates the derivative of a univariate function over a domain or at a specified point (or set of points).


## Syntax

**Discrete Implementation:** `f` and `x` are vectors, where `f` stores the evaluation of <a href="https://www.codecogs.com/eqnedit.php?latex=f(x)" target="_blank"><img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /></a> at every point in the `x`.

`df = differentiate(f,x)`\
`df = differentiate(f,x,x_star)`

**Continuous Implementation:** `f` is a function handles that defines <a href="https://www.codecogs.com/eqnedit.php?latex=f(x)" target="_blank"><img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /></a>.

`[df,x] = differentiate(f,[a,b])`\
`[df,x] = differentiate(f,[a,b],dx)`\
`df = differentiate(f,x_star)`\
`df = differentiate(f,x_star,dx)`


## Description

**Discrete Implementation**

`df = differentiate(f,x)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> over a domain. `x` is a vector of points defining the domain, and `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to everry point in `x`. `x` and `f` can also be though of as the data set <img src="https://latex.codecogs.com/svg.latex?\mathbf{f}\textrm{&space;vs.&space;}\mathbf{x}" title="\mathbf{f}\textrm{ vs. }\mathbf{x}" />.
            
`df = differentiate(f,x,x_star)` returns the derivative of the function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> at a specified point <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> (or set of points <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />). `x` is a vector of points defining the domain, `f` is the vector storing the evaluation of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> corresponding to every point in `x`, and `x_star` is either a scalar <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> or vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> storing the point(s) where we wish to evaluate the derivative of <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />.
 
 **Continuous Implementation**

`[df,x] = differentiate(f,[a,b])` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> over the domain <img src="https://latex.codecogs.com/svg.latex?x\in[a,b]" title="x\in[a,b]" />. `f` specifies the function handle for <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />, while `a` and `b` are the lower and upper bounds of the domain. `df` is a vector storing the evaluations of the derivative corresponding to the points in `x`. This syntax defaults to a grid spacing of <img src="https://latex.codecogs.com/svg.latex?dx=(b-a)/1000" title="dx=(b-a)/1000" />.
            
`[df,x] = differentiate(f,[a,b],dx)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> over the domain <img src="https://latex.codecogs.com/svg.latex?x\in[a,b]" title="x\in[a,b]" />. `f` specifies the function handle for <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />, `a` and `b` are the lower and upper bounds of the domain, and `dx` is the grid spacing <img src="https://latex.codecogs.com/svg.latex?dx" title="dx" />. `df` is a vector storing the evaluations of the derivative corresponding to the points in `x`.



## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
