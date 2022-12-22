disp( 'transmitted messagec:');
x=asc2bn('DataCom');
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
