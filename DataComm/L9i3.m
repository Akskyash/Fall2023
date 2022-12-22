X = asc2bn('DC');
bp = 1; %bit duration
y = []; %New array to store bits with start and stop bit for 
asynchronous transmission
y(1) = 1;
leny = length (x)+((length(x) / 10 ) * 2 ); %Length of New array y
c = 1; %counter to count every 10bit
j = 1; % index number of array x
for I = 2 : 1 : leny
if c == 9 
 y(i) = 0;
 c = c+1;
elseif c == 10;
 y(i) = 1;
 c = 1;
else
y(i) = x(j);
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
plot (tl,bit,'lineWidth',2.5);
grid on; 
axis([ 0 bp*length(y) -.5 6]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('asynchronous transmission (10 bits).');
