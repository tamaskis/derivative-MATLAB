# `differentiate`

Numerically evaluates the derivative of a univariate function over a domain or at a specified point (or set of points).


## Syntax

**Discrete Implementation:** `f` and `x` are vectors, where `f` stores the evaluation of <a href="https://www.codecogs.com/eqnedit.php?latex=f(x)" target="_blank"><img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /></a> at every point in `x`.

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

`df = differentiate(f,x_star)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> evaluated at a specified point <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> (or set of points <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />). `f` specifies the function handle for <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> and `x_star` is either a scalar <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> or vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> storing the point(s) at which to differentiate. This syntax defaults to a grid spacing of <img src="https://latex.codecogs.com/svg.latex?dx=10000\varepsilon" title="dx=10000\varepsilon" />, where <img src="https://latex.codecogs.com/svg.latex?\varepsilon" title="\varepsilon" /> is the machine epsilon (i.e. smallest possible nonzero number).

`df = differentiate(f,x_star,dx)` returns the derivative of a function <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /> evaluated at a specified point <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> (or set of points <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />). `f` specifies the function handle for <img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" />, `x_star` is either a scalar <img src="https://latex.codecogs.com/svg.latex?x^{*}" title="x^{*}" /> or vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" /> storing the point(s) at which to differentiate, and `dx` specifies the grid spacing <img src="https://latex.codecogs.com/svg.latex?dx" title="dx" />.

**Note**
 
The syntaxes involving `x_star` do NOT work when <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}\in\mathbb{R}^{2}" title="\mathbf{x}\in\mathbb{R}^{2}" /> due to the logic of the code. Therefore, if you wish to evaluate the derivative at two specific points, then you should add a third "dummy" point to <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}" title="\mathbf{x}^{*}" />. For example, if you wanted to evaluate a derivative at <img src="https://latex.codecogs.com/svg.latex?x=5" title="x=5" /> and <img src="https://latex.codecogs.com/svg.latex?x=7" title="x=7" />, you should define <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}=(5,7,0)^{T}" title="\mathbf{x}^{*}=(5,7,0)^{T}" /> (where 0 serves as the dummy variable) and *not* <img src="https://latex.codecogs.com/svg.latex?\mathbf{x}^{*}=(5,7)^{T}" title="\mathbf{x}^{*}=(5,7)^{T}" />. You can then just discard the result you get for <img src="https://latex.codecogs.com/svg.latex?x=0" title="x=0" />. This is demonstrated in EXAMPLES.m.


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
