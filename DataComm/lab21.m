fs = 10000;
t = -1:1/fs:100-1/fs; 
C=4;
F=4;
A1 = 72;
A2 = 24;
x1 = A1*cos(2*pi*(C*100)*t); 
x2 = A2*cos(2*pi*(F*100)*t); 
x3=x1+x2;
sig=x3(1:200);
time=t(1:200);
xmin=min(x3);
xmax=max(x3);
line=linspace(xmin,xmax,6);
partition=[(line(1))+(line(2))/2, (line(2))+(line(3))/2, (line(3))+(line(4))/2, (line(4))+(line(5))/2, (line(5))+(line(6))/2];
codebook=linspace(xmin,xmax,6);
[index,quants]=quantiz(sig,partition,codebook);
figure
plot(time,sig,'x',time,quants,'.')
xlabel('Time');
ylabel('Signal Partition');
title('Quantized Waveforms');
legend('Original Signal', 'Quantized Signal');