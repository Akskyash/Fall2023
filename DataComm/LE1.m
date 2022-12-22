fs=10000; 
AMP1=2; 
AMP2=10; 
FREQ1=14; 
FREQ2=26; 
t=0:1/fs:1-1/fs; 
x1=AMP1*sin(2*3.1416*FREQ1*t); 
x2=AMP2*sin(2*3.1416*FREQ2*t+30*(3.1416/180)); 
x=AMP1*sin(2*3.1416*FREQ1*t)+AMP2*sin(2*3.1416*FREQ2*t+30); 
fx=fft(x); 
fx=fftshift(fx)/(fs/2); 
f = fs/2*linspace(-1,1,fs); 
figure; 
plot(f, abs(fx),'LineWidth',1.5); 
title('Composite Signal'); 
axis([-100 100 0 2]) 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude'); 