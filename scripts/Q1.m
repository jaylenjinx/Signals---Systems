%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q1.m
* Description       : This file contains the code for Question 1 in Tute 2
* Date              : 14/03/2024
*
****************************************************************************
%}

syms t

x1 = exp((-1/2)*t)*sin(3*t)*heaviside(t);
x2 = fourier(x1);
x3 = abs(x2);
x4 = angle(x2);
x5 = rad2deg(x4);

% x over t
subplot(2, 1, 1);
fplot(x3);
grid on;
xlabel('t');
ylabel('|𝑋(𝜔)|');
title('Magnitue Spectrum');

% y over t
subplot(2, 1, 2);
fplot(x5);
grid on;
xlabel('t');
ylabel('∠𝑋(𝜔)');
title('Phase Spectrum');