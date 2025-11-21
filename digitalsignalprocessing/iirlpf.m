fs=20000 %Sampling frequency
%Specifications of the filter
fpb=4000 %Passband edge in Hz
omega_pb=fpb/(fs/2) %Normalized Passband edge 

fsb=8000 %Stopband edge in Hz
omega_sb=fsb/(fs/2) %Normalized Stopband edge 

apb=1 %passband attenuation in dB
asb=20 %stopband attenuation in dB

%To find the order and cut-off frequency of the IIR Filter
[n,Wc] = buttord(omega_pb,omega_sb,apb,asb)

%To design a Butterworth filter to meet the given specifications
[B,A] = butter(n,Wc)
%B is the numerator coefficient of the transfer function
%A is the denominator coefficient of the transfer function

%To see the frequency response of the filter 
fvtool(B,A) 
%fv tool stands for filter visualization tool
%fvtool is the Matlab Command to show Impulse Response,

%To see pole-zero plot
zplane(B,A)
