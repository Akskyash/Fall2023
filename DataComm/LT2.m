AMP1 = 2; 
AMP2 = 10; 
FREQ1 = 4; 
FREQ2 = 26; 
P1 = 0; 
P2 = 30*pi/180; 
T1 = 1/FREQ1; 
T2 = 1/FREQ2; 
t1 = linspace(0,2*T1,1000); 
t2 = linspace(0,2*T2,1000); 
x1 = AMP1*sin(2*pi*FREQ1*t1+P1); 
x2 = AMP2*sin(2*pi*FREQ2*t2+P2); 
quatization_levels1 = linspace(-AMP1,AMP1,16); 
quatization_levels2 = linspace(-AMP2,AMP2,16); 
quatised_x1 = zeros(1,length(x1)); 
quatised_x2 = zeros(1,length(x2)); 
for i = 1:length(x1) 
 [~,index] = min(abs(quatization_levels1-x1(i))); 
 quatised_x1(i) = quatization_levels1(index); 
end 
for i = 1:length(x2) 
 [~,index] = min(abs(quatization_levels2-x2(i))); 
 quatised_x2(i) = quatization_levels2(index); 
end  
figure; 
plot(t1,x1,t1,quatised_x1); 
hold on 
plot(t2,x2,t2,quatised_x2); 
xlabel('t'); 
title('Quantized Signals'); 
legend('Original signal','Quantized signal');
