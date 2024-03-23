%{
****************************************************************************
* Copyright         : 2024 Jaylen Avtarovski
* File Name         : Q3.m
* Description       : This file contains the code for Question 3 in Tute 3
*
****************************************************************************
%}

% Define time variable
syms t tau omega;

% Define functions x1(t) and x2(t)
x1 = 2 * heaviside(t + 1) - 2 * heaviside(t - 1);
x2 = heaviside(t + 2) - heaviside(t - 2);

% Compute the convolution of x1(t) and x2(t)
xc = int(subs(x1, tau) * subs(x2, t - tau), tau, -inf, inf);

% Do the Fourier
X1 = fourier(x1, t, omega);
X2 = fourier(x2, t, omega);
Xc = fourier(xc, t, omega);

% Calculate the product of the independent Fourier transforms
Xp = simplify(X1 * X2);

% Plot magnitude and phase spectra
figure;

% Convolution Spectrum: Magnitude
subplot(2, 2, 1);
fplot(abs(Xc), [-10, 10]);
title('Convolution Spectrum: Magnitude');
xlabel('Frequency (Hz)');
ylabel('|X(\omega)|');
grid on;

% Convolution Spectrum: Phase
subplot(2, 2, 2);
fplot(angle(Xc), [-10, 10]);
title('Convolution Spectrum: Phase');
xlabel('Frequency (Hz)');
ylabel('\angleX(\omega)');
grid on;

% Multiplication Spectrum: Magnitude
subplot(2, 2, 3);
fplot(abs(Xp), [-10, 10]);
title('Multiplication Spectrum: Magnitude');
xlabel('Frequency (Hz)');
ylabel('|X_1(\omega) X_2(\omega)|');
grid on;

% Multiplication Spectrum: Phase
subplot(2, 2, 4);
fplot(angle(Xp), [-10, 10]);
title('Multiplication Spectrum: Phase');
xlabel('Frequency (Hz)');
ylabel('\angle(X_1(\omega) X_2(\omega))');
grid on;
