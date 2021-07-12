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
df = derivative(f,x);

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
%df = derivative(f,x,3.5)
df = derivative(f,x,3.5)
df = differentiate_old(f,x,100)