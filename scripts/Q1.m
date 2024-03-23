%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q1.m
* Description       : This file contains the code for Question 1 in Tute 3
*
****************************************************************************
%}

% Define the time range
t = -5:0.01:5;

% Define x(t) function
x = @(t) (1/2) * exp(-2 * t) .* heaviside(t);

% Define y(t) function (shifted version of x(t))
y = @(t) x(t + 0.3);

% Calculate the Fourier transforms of x(t) and y(t)
X = fftshift(fft(x(t)));
Y = fftshift(fft(y(t)));

% Calculate the frequency range
N = length(t);
Fs = 1/(t(2)-t(1));
f = (-N/2:N/2-1) * Fs/N;

% Apply time shifting property to x(t)
t0 = 0.3;
X_expected = X .* exp(-1i * 2 * pi * f * t0);

% Plot the signals and their spectra
figure;

subplot(2,2,1);
plot(t, x(t));
grid on;
title('x(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(2,2,2);
plot(f, abs(X));
grid on;
title('X(\omega)');
xlabel('Frequency');
ylabel('Magnitude');

subplot(2,2,3);
plot(t, y(t));
grid on;
title('y(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(2,2,4);
plot(f, abs(Y));
grid on;
title('Y(\omega)');
xlabel('Frequency');
ylabel('Magnitude');
