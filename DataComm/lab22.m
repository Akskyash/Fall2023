fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time duration
f1 = 4; % Frequency of first signal
f2 = 4; % Frequency of second signal
A1 = 72; % Amplitude of first signal
A2 = 24; % Amplitude of second signal
x1 = A1*cos(2*pi*f1*t); % First Signal
x2 = A2*cos(2*pi*f2*t); % Second Signal
%Plotting both signals in time domain
plot(t,x1,'k--o','LineWidth',1.5)
hold on
plot(t,x2,'b-*','LineWidth',2)
hold off
xlabel('time in seconds')
ylabel('Amplitude in volts')
title('Signals of different Frequencies')
