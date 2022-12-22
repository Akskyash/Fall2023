%             (A)
fs = 10;% Sampling frequency 
T = 1/fs; 
t = -T : T/40 :4*T; % Time duration 
f1 = 4; % Frequency of first signal 
f2 = 6; % Frequency of second signal 
A1 = 11; % Amplitude of first signal 
A2 = 16; % Amplitude of second signal 
x1 = A1*cos(2*pi*f1*t); % First Signal 
x2 = A2*sin(2*pi*f2*t); % Second Signal 
x3 = x1+x2;


%             (B)
fs = 300;% Sampling frequency 
T = 1/fs; 
t = -T : T/40 :4*T; % Time duration 
f1 = 4; % Frequency of first signal 
f2 = 4; % Frequency of second signal 
A1 = 72; % Amplitude of first signal 
A2 = 24; % Amplitude of second signal 
x1 = A1*cos(2*pi*f1*100*t); % First Signal 
x2 = A2*cos(2*pi*f2*100*t); % Second Signal 
x3 = x1+x2;
%plotting x3 signal in time domain
plot(t,x3,'r','LineWidth',1.5);
xlabel('time in seconds')
ylabel('Amplitude in volts') 
title('Signal x3')



%           (C)
fs1=30000; %Next, calculate the frequency axis, which is defined by the sampling rate 
f = 0 : 1/fs1 :1-(1/fs1); 
x1 = A1*cos(2*pi*f1*f); % First Signal 
x2 = A2*cos(2*pi*f2*f); % Second Signal 
x3 = x1+x2; 
%Take fourier transform 
fx3 = fft(x3); 
%apply fftshift to put it in the form we are used to (see documentation) 
fx3 = fftshift(fx3)/(fs1/2); 
%Since the signal is complex, we need to plot the magnitude to % get it to look right, so we use abs (absolute value) figure 
plot(f, abs(fx3),'LineWidth',1.5); 
title('Magnitude FFT of cosine'); 
axis([0.496 0.504 -2 25.5]) 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude'); 
bandwidth = obw(x3,fs1);

%           (D)
fs2 = 1000;
t = [0:1/fs2:0.5]; 
x1 = A1*cos(2*pi*f1*t); % First Signal 
x2 = A2*cos(2*pi*f2*t); % Second Signal 
x3 = x1+x2; 
f = 0.8;% Times at which to sample the sine function 
sig = x3; % Original signal 
partition = [-20,-10,0,10,20]; % Length 4, to represent 5 intervals 
codebook = [-25,-15,-5,5,15,25]; % Length 5, one entry for each interval 
[index,quants] = quantiz(sig,partition,codebook); % Quantize. figure 
plot(t,sig,'x',t,quants,'r:'); 
legend('Original signal','Quantized signal');