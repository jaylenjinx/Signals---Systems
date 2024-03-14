%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q2.m
* Description       : This file contains the code for Question 2 in Tute 2
* Date              : 14/03/2024
*
****************************************************************************
%}

syms w

x1 = (1/2)*(5/(25-w^2));

x2 = ifourier(x1);

% x over t
subplot(2, 1, 1);
fplot(x1, [0, 10]);
grid on;
xlabel('t');
ylabel('𝑋(𝜔)');
title('Fourier Spectrum');

% y over t
subplot(2, 1, 2);
fplot(x2, [0, 10]);
grid on;
xlabel('t');
ylabel('x(t)');
title('Inverse of Fourier Spectrum');