%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q1a.m
* Description       : This file contains the code for Question 1a in Tute 1
*
****************************************************************************
%}

% define t
t = 0:0.01:10;
% define y in terms of t
y = 4 * exp(-0.7*t) .* cos(2*pi*t);

% plot the function
figure, plot(t, y); grid on;
xlabel('t');
 ylabel('y');
title('Plot of Q1a');
axis([0 10 -4 4]);