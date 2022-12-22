fs=250;% sampling frequency
fc=426;% frequency of the signal
t=0:1/fs:1-(1/fc);%discrete time
x=72*cos(2*pi*fc*t);% discrete signal
%--------Quantization------------%
n=4;
L=(2^n)-1;
L
delta=(max(x)-min(x))/L;
delta
xq=min(x)+(round((x-min(x))/delta)).*delta;
%--------END------------%
subplot(2,1,1)
stem(t,x,'R');
subplot(2,1,2);% breaking the window figure to plot both graphs
stem(t,x,'b');% plot of discrete time signaltitle('Discrete time representation')% title of the figure
xlabel('time(s)')% label on the x-axis of the plot
ylabel('X[n]')% label on the y-axis of the plot
subplot(2,1,2);
stairs(t,xq,'b');% the quantized output
title('Quantized Signal')% title of the figure
xlabel('time')% label on the x-axis of the plot
ylabel('amplitude')% label on the y-axis of the plot
voltage=dec2bin(3.2)