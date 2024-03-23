%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q3.m
* Description       : This file contains the code for Question 3 in Tute 3
*
****************************************************************************
%}

% Config
fs = 100; % Sampling Frequency
n = 1000; % Number of sampling points

% Time Domain Setup
t = (0:n-1) / fs; % Time-Domain Vector
fshift = (-n/2:n/2-1)*(fs/n); % zero-centered frequency range

% Calculate Functions
x = cos(4 * pi * t);
y = exp(1i * pi * t) .* x;

% Perform FFT
X = fftshift(fft(x) / n);
Y = fftshift(fft(y) / n);

% Calculate Magnitude Spectra
powerX = abs(X).^2;
powerY = abs(Y).^2;

% Plot Results
figure;

% Plot x(t)
subplot(2, 2, 1);
plot(t, x);
title('Function x(t) = cos(4\pi t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot Magnitude Spectrum of x(t)
subplot(2, 2, 2);
plot(fshift, powerX);
xlim([0, 4]);
title('Magnitude Spectrum of x(t)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

% Plot y(t)
subplot(2, 2, 3);
plot(t, real(y));
title('Function y(t) = e^{j\pi t} \cdot x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

% Plot Magnitude Spectrum of y(t)
subplot(2, 2, 4);
plot(fshift, powerY);
xlim([0, 4]);
title('Magnitude Spectrum of y(t)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
