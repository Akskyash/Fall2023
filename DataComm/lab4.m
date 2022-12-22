fs=5000;
t=0:1/fs:1-1/fs;
x=20*sin(2*pi*400*t)+24*cos(2*pi*700*t)+0.21*randn(size(t));
SNR = snr(x);
SNR
bandwidth=obw(x,fs);
bandwidth
Capacity= bandwidth*log2(1+SNR)
level= 2^(Capacity/(2*bandwidth))