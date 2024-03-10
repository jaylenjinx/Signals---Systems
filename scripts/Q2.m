%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q2.m
* Description       : This file contains the code for Question 2 in Tute 1
*
****************************************************************************
%}

% define t (1000 points between 0 & 2
t = -5:0.001:5;

% define x in terms of t, t+2, 2t & 1-2t for each section
x1 = (1 + (t/2)) .* (heaviside(t+1) - heaviside(t-1));
x2 = (1 + ((t+2)/2)) .* (heaviside((t+2)+1) - heaviside((t+2)-1));
x3 = (1 + (2*t/2)) .* (heaviside(2*t+1) - heaviside(2*t-1));
x4 = (1 + ((1-(2*t))/2)) .* (heaviside((1-(2*t))+1) - heaviside((1-(2*t))-1));

% plot the functions
% x(t)
subplot(4, 1, 1);
plot(t, x1);
grid on;
xlabel('t');
ylabel('x(t)');
title('Plot of x(t)');
axis([-5 5 0 2]);

% x(t + 2)
subplot(4, 1, 2);
plot(t, x2); 
grid on;
xlabel('t');
ylabel('x(t + 2)');
title('Plot of x(t + 2)');
axis([-5 5 0 2]);

% x(2t)
subplot(4, 1, 3);
plot(t, x3); 
grid on;
xlabel('t');
ylabel('x(2t)');
title('Plot of x(2t)');
axis([-5 5 0 2]);

% x(1 - 2t)
subplot(4, 1, 4);
plot(t, x4); 
grid on;
xlabel('t');
ylabel('x(1 - 2t)');
title('Plot of x(1 - 2t)');
axis([-5 5 0 2]);
