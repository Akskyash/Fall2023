AMP1=2;
J1=0*(pi/180);
FREQ1=4;
T1=1/FREQ1;
t=T1:T1/40:3*T1;
x1=cos(FREQ1+J1);
AMP2=10;
FREQ2=26;
T2=1/FREQ2;
J2=30*(pi/180);
x2=cos(FREQ2+J2) ;
t=T2:T2/40:3*T2;
x3=x1+x2;
plot(t,x1,'b') 
hold on 
plot (t,x2,'g') 
xlabel('Time ------>>') 
ylabel('x(t) ------>>') 
title('x=A*cos(2*pi*b*t+j)')

