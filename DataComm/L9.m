clc, clear all, close all;
% ******************* Digital/Binary input information ********************
Transmitted_Message = 'Md Mahmodul Kabir'
x = asc2bn(Transmitted_Message)
N = length(x);
Fc = 1940; % Carrier frequency
Tb = Fc/10; %Data rate = 1MHz i.e., bit period (second)
br = 1/Tb; % Bit rate
disp('Binary Input Information at Transmitter: ');
disp(x);