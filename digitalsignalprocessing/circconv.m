x=input('Enter the first sequence')
h=input('Enter the second sequence')
N=input('Enter the length of circular convolution')

%Method 1
disp('Circular Convolution output sequence is')
y=cconv(x,h,N)%cconv is the matlab command to do circular convolution

%To plot the sequences
%Divide the figure window into 3 rows, 1 column
%And select the first position in that
subplot(3,1,1)
stem(x)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('First Sequence')

%Divide the figure window into 3 rows, 1 column
%And select the second position in that
subplot(3,1,2)
stem(h)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Second Sequence')

%Divide the figure window into 3 rows, 1 column
%And select the third position in that
subplot(3,1,3)
stem(y)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Circular Convolution Output')

%Method 2 : Frequency Domain Approach (Stockham's Method)
X=fft(x,N)
H=fft(h,N)
Y=X.*H
disp('Circular Convolution sequence using Frequency Domain Approach is')
y=ifft(Y)
