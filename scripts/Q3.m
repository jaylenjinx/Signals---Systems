%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q3.m
* Description       : This file contains the code for Question 3 in Tute 2
* Date              : 14/03/2024
*
****************************************************************************
%}

% Time Domain
dt = 0.001
t = -0.5:dt:0.5; % Time Vector
x = 5*cos(50*pi*t)+3*sin(100*pi*t)+sin(200*pi*t);

% Frequency Domain
Wmax = 2*pi*200; % Angular Frequency Range
K = 2000; % Sampling Points In Frequency Domain
w = (0:K-1)*Wmax/K; % Frequency Vector

% Fourier Transform
X = x*exp(-1j*t'*w)*dt;
mag_X = 2*abs(X);

figure,
subplot(2, 1, 1);
plot(t, x);
grid on;
axis([0 0.5 -10 10]);
xlabel('Time');
ylabel('x(t)');
title('Time Domain');

subplot(2, 1, 2);
plot(w/(2*pi), mag_X);
grid on;
axis([0 200 0 6]);
xlabel('Frequency (Hz)');
ylabel('|𝑋(𝜔)|');
title('Frequency Domain');