        %(a)
 
        
function dn = asc2bn(txt) 
dec=double(txt); %Text to ASCII (decimal) 
p2=2.^(0:-1:-7); % 2^0,2^- 1,.......,2^-7
B=mod(floor(p2'*dec),2); 
%Decimal to binary conversion
%Columns of B are bits of chars
dn=reshape(B,1,numel(B));%Bytes to serial conversion
end


        %(b)
        
        
disp( 'transmitted messagec:');
x=asc2bn('Akash');
nx=size(x,2); 
bp=1; %bit duration
bit=[]; 
for n=1:1:length(x) 
if x(n)==1; 
se=5*ones(1,100); 
else x(n)==0; 
se=zeros(1,100); 
end
bit=[bit se]; 
end
t1=bp/100:bp/100:100*length(x)*(bp/100); 
plot(t1,bit,'lineWidth',2.5); 
grid on; 
axis([ 0 bp*length(x) -.5 6]); 
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Transmitting information as digital signal');


        %(c)
        
        
x = asc2bn('Ak');
bp = 1; %bit duration
y = []; %New array to store bits with start and stop bit for asynchronous transmission
y(1) = 1;
leny = length (x)+((length(x) / 10 ) * 2 ); %Length of New array y
c = 1; %counter to count every 10bit
j = 1; % index number of array x
for i = 2 : 1 : leny
if c == 9 
    y(i) = 0;
    c = c+1;
elseif c == 10;
    y(i) = 1;
    c = 1;
else
    y(i)=x(j);
    j = j+1;
    c = c+1;
end
end
%This for loop to add start and stop bit with every 10 bits
Bit = [];
for n = 1 : 1 : length (y)
if y(n) == 1;
se = 5 * ones (1, 100);
else y(n) == 0;
se = zeros (1,100);
end
bit = [bit se];
end
tl = bp/100 : bp/100 : 100*length(y)*(bp/100);
plot(tl,'lineWidth',2.5);
plot(bit,'lineWidth',2.5);
grid on; 
axis([ 0 bp*length(y) -.5 6]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('asynchronous transmission (10 bits).');


     %(d)
    
     
x=asc2bn('AK');
bp=1;
y=[]; %New array to store bits with start and stop bit for asynchronous transmission
y(1)=1;
leny=length (x)+((length (x)/8)*2); %Length of New array y
c=1; %counter to count every 8 bit
j=1; % index no for array x
for i=2:1:leny 
if c==9
y(i)=0;
c=c+1;
elseif c==10; 
y(i)=1;
c=1;
else
y(i)=x(j);
j=j+1;
c=c+1;
end
end
%This for loop to add start and stop bit with every 8 bit
bit=[];
prompt='Choose Synchronous or Asynchronous'
prompt='Synchronous Transmission or Asynchronous Transmission? [ST/AT]'; %Take input
str=input(prompt,'s');
if (str=='ST') 
z=x; % x has synchronous bits
else
z=y; % y has asynchronous bits
end
for n=1:1:length (z) 
if z(n)==1; 
se=5*ones (1, 100);
else z(n)==0; 
se =zeros (1,100); 
end
bit=[bit se];
end
tl=bp/100:bp/100:100*length(z) *(bp/100);
plot (tl,bit,'lineWidth',2.5); 
grid on; 
axis([ 0 bp*length(z) -.5 6]); 
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Transmitting information as digital signal');
