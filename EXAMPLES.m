%% Copyright (c) 2021 Tamas Kis

% Examples for using the "differentiate" function.



%% SCRIPT SETUP

% clears variables and command window, closes all figures
clear;
clc;
close all;



%% EXAMPLE #1 - DOMAIN - DISCRETE

% f(x) = x^3 as a discrete set of values
x = [0,1,2,3,4,5];
f = [0,1,8,27,64,125];

% differentiates over the domain specified by "x"
df = differentiate(f,x);

% plots derivative
figure;
plot(x,df,'k','linewidth',1.5);
grid on;
xlabel('$x$','interpreter','latex','fontsize',18);
ylabel("$f'(x)$",'interpreter','latex','fontsize',18);


%% EXAMPLE #2 - POINT - DISCRETE

% f(x) = x^3 as a discrete set of values
x = [0,1,2,3,4,5];
f = [0,1,8,27,64,125];
  
% differentiates at x* = 3.5
df = differentiate(f,x,3.5)



%% EXAMPLE #3 - DOMAIN - CONTINUOUS

% f(x) = x^3 as a continuous function
f = @(x) x^3;
  
% differentiates over the domain [0,5]
[df,x] = differentiate(f,[0,5]);

% plots derivative
figure;
plot(x,df,'k','linewidth',1.5);
grid on;
xlabel('$x$','interpreter','latex','fontsize',18);
ylabel("$f'(x)$",'interpreter','latex','fontsize',18);



%% EXAMPLE #4 - DOMAIN - CONTINUOUS - SPECIFIED GRID SPACING

% f(x) = x^3 as a continuous function
f = @(x) x^3;
  
% differentiates over the domain [0,5] with grid spacing of dx = 1
[df,x] = differentiate(f,[0,5],1);

% plots derivative
figure;
plot(x,df,'k','linewidth',1.5);
grid on;
xlabel('$x$','interpreter','latex','fontsize',18);
ylabel("$f'(x)$",'interpreter','latex','fontsize',18);



%% EXAMPLE #5 - POINT - CONTINUOUS

% f(x) = x^3 as a continuous function
f = @(x) x^3;
  
% differentiates at x* = 3.5
df = differentiate(f,3.5)



%% EXAMPLE #6 - POINT - CONTINUOUS - SPECIFIED GRID SPACING

% f(x) = x^3 as a continuous function
f = @(x) x^3;
  
% differentiates at x* = 3.5 with grid spacing of dx = 1
df = differentiate(f,3.5,1)



%% EXAMPLE #7 - SET OF POINTS - CONTINUOUS

% f(x) = x^3 as a continuous function
f = @(x) x^3;

% defines vector to store x* = (2.5,3.5)^T (i.e. points at which to
% differentiate)
x_star = [2.5;3.5;0];

% differentiates at x* = 2.5 and 3.5
df = differentiate(f,x_star)