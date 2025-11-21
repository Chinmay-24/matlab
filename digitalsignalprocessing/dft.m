x=input('Enter the sequence')
N=input('Enter how many point DFT is to be computed')

if(N>length(x))
    x=[x, zeros(1,N-length(x))]
end

WN=exp(-j*2*pi/N)%Twiddle Factor

%To generate WN Matrix
n=0:N-1
k=0:N-1

%To genrate powers of WN
powers=n'*k

%To generate WN Matrix
%Raise WN to the powers element by element
matrix=WN.^powers

%To Compute DFT, multiply matrix and x(n)
X1=matrix*x.' %To get transpose of a matrix, use .'

%To compute DFT using inbuilt Matlab command
X2=fft(x,N) %fft is the Matlab command to compute DFT

%To determine Magnitude Spectrum
mag_spectrum=abs(X2)%abs is the Matlab command to compute magnitude
phase_spectrum=angle(X2)%angle is the Matlab command to compute phase

%To plot the sequence x(n)
%Divide the graph window into 3 rows, 1 column 
%and select the first position
subplot(3,1,1)
stem(n,x)
grid on
xlabel('discrete time')
ylabel('Amplitude')
title('Input Sequence')

subplot(3,1,2)
stem(k,mag_spectrum)
grid on
xlabel('discrete frequency')
ylabel('Magnitude')
title('Magnitude Spectrum')

subplot(3,1,3)
stem(k,phase_spectrum)
grid on
xlabel('discrete frequency')
ylabel('Phase')
title('Phase Spectrum')
