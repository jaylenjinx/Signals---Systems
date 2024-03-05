%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q1b.m
* Description       : This file contains the code for Question 1b in Tute 1
*
****************************************************************************
%}

% define t (1000 points between 0 & 2
t = 0:0.001:2;

% define x as a matrix of zeros the same size as t
x = zeros(size(t));

% define x in terms of t for each section
x(t >= 0 & t <= 1) = 2 * t(t >=0 & t <= 1);
x(t > 1 & t <= 2) = (-2 * t(t > 1 & t <=2)) + 4;

% plot the function
figure, plot(t, x); 
grid on;
xlabel('t');
ylabel('x');
title('Plot of Q1b');
axis([0 2 0 2]);