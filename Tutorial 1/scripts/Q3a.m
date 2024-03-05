%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q3a.m
* Description       : This file contains the code for Question 3a in Tute 1
*
****************************************************************************
%}

dt = 0.01;
t1 = 0:dt:pi;
t2 = 0:dt:pi;

ts = min(t1) + min(t2);
te = max(t1) + max(t2);

t = ts:dt:te;

x = sin((30*t1) + 10);
y = cos(20*t2);

z = conv(x,y) * dt;

% x over t
subplot(3, 1, 1);
plot(t1, x); 
grid on;
xlabel('t');
ylabel('x');
title('Plot of x on t');
axis([0 pi -2 2]);

% y over t
subplot(3, 1, 2);
plot(t2, y); 
grid on;
xlabel('t');
ylabel('y');
title('Plot of y on t');
axis([0 pi -2 2]);

% z over t
subplot(3,1,3);
plot(t, z); 
grid on;
xlabel('t');
ylabel('z');
title('Plot of z on t');
axis([0 pi -2 2]);