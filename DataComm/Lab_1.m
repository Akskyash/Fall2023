% (a)

A1=19;
j1=11*(pi/180) ;
b=4176;
T=1/b;
t=-T:T/40:3*T;
x1=A1*cos(2*pi*b*t+j1);
A2=13;
j2=30*(pi/180);
x2=A2*cos(2*pi*b*t+j2) ;

% (b)
A1=20;
j1=27*(pi/180) ;
b=4264;
T=1/b;
t=-T:T/40:3*T;
x1=A1*cos(2*pi*b*t+j1);
A2=71;
j2=30*(pi/180);
x2=A2*cos(2*pi*b*t+j2) ;
x3=x1+x2;
plot(t,x1,'b') 
hold on 
plot (t,x2,'g') 
xlabel('Time ------>>') 
ylabel('x(t) ------>>') 
title('x=A*cos(2*pi*b*t+j)')




% (d)
A1=20;
j1=27*(pi/180) ;
b=4264;
T=1/b;
t=-T:T/40:3*T;
x1=A1*cos(2*pi*b*t+j1);
A2=71;
j2=30*(pi/180);
x2=A2*cos(2*pi*b*t+j2) ;
subplot(3,1,1) 
plot(t,x1,'b') 
xlabel('Time ------>>') 
ylabel('x1(t) ------>>') 
title('x1=A1*cos(2*pi*b*t+j1)') 
subplot(3,1,2) 
plot (t,x2,'g') 
xlabel('Time ------>>') 
ylabel('x2(t) ------>>') 
title('x2=A2*cos(2*pi*b*t+j2)') 


% (e)
A1=20;
j1=27*(pi/180) ;
b=4264;
T=1/b;
t=-T:T/40:3*T;
x1=A1*cos(2*pi*b*t+j1);
A2=71;
j2=30*(pi/180);
x2=A2*cos(2*pi*b*t+j2) ;
x3=x1+x2; 
subplot(3,1,1) 
plot(t,x1,'b') 
xlabel('Time ------>>') 
ylabel('x1(t) ------>>') 
title('x1=A1*cos(2*pi*b*t+j1)') 
subplot(3,1,2) 
plot (t,x2,'g') 
xlabel('Time ------>>') 
ylabel('x2(t) ------>>') 
title('x2=A2*cos(2*pi*b*t+j2)') 
subplot(3,1,3) 
plot (t,x3,'r') 
xlabel('Time ------>>') 
ylabel('x3(t) ------>>') 
title('X3=A3*cos(2*pi*b*t+j3)')