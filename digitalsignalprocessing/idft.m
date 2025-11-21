X=input('Enter the DFT')
N=length(X)
WN=exp(-j*2*pi/N)%Twiddle Factor

%To generate WN Matrix
n=0:N-1
k=0:N-1

%To genrate powers of WN
powers=-n'*k

%To generate WN Matrix
%Raise WN to the powers element by element
matrix=WN.^powers

%To Compute IDFT
x1=(1/N)*matrix*X.' %To get transpose of a matrix, use .'

%To compute IDFT using inbuilt Matlab command
x2=ifft(X) %ifft is the Matlab command to compute IDFT
