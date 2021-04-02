# `differentiate`

Numerically evaluates the derivative of a univariate function over a domain or at a specified point (or set of points).


## Syntax

**Discrete Implementation:** `f` and `x` are vectors, where `f` stores the evaluation of <a href="https://www.codecogs.com/eqnedit.php?latex=f(x)" target="_blank"><img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /></a> at every point in the `x`.

`df = differentiate(f,x)`\
`df = differentiate(f,x,x_star)`\

**Continuous Implementation:** `f` is a function handles that defines <a href="https://www.codecogs.com/eqnedit.php?latex=f(x)" target="_blank"><img src="https://latex.codecogs.com/svg.latex?f(x)" title="f(x)" /></a>.

`[df,x] = differentiate(f,[a,b])`\
`[df,x] = differentiate(f,[a,b],dx)`\
`df = differentiate(f,x_star)`\
`df = differentiate(f,x_star,dx)`


## Description

`[c0,c1] = least_squares_fit(x,y)` returns the coefficients `c0` and `c1` for the linear least squares fit <img src="https://latex.codecogs.com/svg.latex?y=c_{0}&plus;c_{1}x" title="y=c_{0}+c_{1}x" /> to a set of data defined by the vectors `x` (independent variable) and `y` (dependent variable).
            
`[c0,c1] = least\_squares\_fit(x,y,'linear')` returns the coefficients `c0` and `c1` for the linear least squares fit <img src="https://latex.codecogs.com/svg.latex?y=c_{0}&plus;c_{1}x" title="y=c_{0}+c_{1}x" /> to a set of data defined by the vectors `x` (independent variable) and `y` (dependent variable).
 
`c = least\_squares\_fit(x,y,'poly',n)` returns the coefficient vector <img src="https://latex.codecogs.com/svg.latex?\mathbf{c}=\left(c_{0},...,c_{n}\right)^{T}" title="\mathbf{c}=\left(c_{0},...,c_{n}\right)^{T}" /> for the <img src="https://latex.codecogs.com/svg.latex?n^{\textrm{th}}" title="n^{\textrm{th}}" /> degree polynomial least squares fit <img src="https://latex.codecogs.com/svg.latex?y=c_{0}&plus;c_{1}x&plus;\dots&plus;c_{n}x^{n}" title="y=c_{0}+c_{1}x+\dots+c_{n}x^{n}" /> to a set of data defined by the vectors `x` (independent variable) and `y` (dependent variable).

`[a,b] = least\_squares\_fit(x,y,'power')` returns the coefficients `a` and `b` for the power least squares fit <img src="https://latex.codecogs.com/svg.latex?y=ax^{b}" title="y=ax^{b}" /> to a set of data defined by the vectors `x` (independent variable) and `y` (dependent variable).

`[a,b] = least\_squares\_fit(x,y,'exp')` returns the coefficients `a` and `b` for the exponential least squares fit <img src="https://latex.codecogs.com/svg.latex?y=ae^{bx}" title="y=ae^{bx}" /> to a set of data  defined by the vectors `x` (independent variable) and `y` (dependent variable).

`[a,b] = least\_squares\_fit(x,y,'log')` returns the coefficients `a` and `b` for the logarithmic least squares fit <img src="https://latex.codecogs.com/svg.latex?y=a&plus;b\ln{x}" title="y=a+b\ln{x}" /> to a set of data defined by the vectors `x` (independent variable) and `y` (dependent variable).


## Additional Documentation and Examples

See "DOCUMENTATION.pdf" for additional documentation and examples.
