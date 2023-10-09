clc
clear
b = [0.5, 0.5];
a = 1;
fs = 2000; % Sampling rate
Ts = 1/fs; % Sampling interval
f = 0: pi/10: pi; % Analog frequency
F = f/fs; % Digital frequency
% Obtain the frequency response of the filter
[h, w] = freqz(b, a, fs);
% Plot the magnitude frequency response of the filter
figure;
plot (w, 20*log10(abs(h)));
xlabel ('Frequency (Hz)');
ylabel ('Magnitude (dB)');
grid on;
title ('Filter y(n) = 0.5[x(n)+x(n-1)]');
