%Matlab program to simulate amplitude scaling & time scaling
clc
clear all
close all

%Original Signal
x=[1,2,3,4,5,6,7]
n=0:length(x)-1
subplot(2,1,1)
stem(n,x)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Original Signal')

%Amplitude Scaling
k=2 %Scaling Factor
y1=k*x
subplot(2,1,2)
stem(n,y1)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Amplitude Scaled Signal')

%Time Scaling (Compression)
k=3 %Compression Factor
y2=zeros(1,length(x))
for n =0:length(x)-1
    if (k*n+1)<=length(x)
        y2(n+1)=x(k*n+1)
    end
end

%Plotting the original signal
figure
n=0:length(x)-1
subplot(3,1,1)
stem(n,x)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Original Signal')

%Plotting the compressed signal
n=0:length(y2)-1
subplot(3,1,2)
stem(n,y2)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Compressed Signal')

%Time Scaling (Expansion)
k=3 %Expansion Factor
y3=zeros(1,k*length(x))
for n =0:length(y3)-1
    if mod(n,k)==0
        y3(n+1)=x(n/k+1)
    end
end
n=0:length(y3)-1
subplot(3,1,3)
stem(n,y3)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Expanded Signal')
