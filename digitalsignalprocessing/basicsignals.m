n=0:9 %Discrete time index

%Unit Sample Sequence (Unit Impulse)
x1=[1,zeros(1,9)]
subplot(2,1,1)
stem(n,x1)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Unit Impulse')

%Unit Step Sequence
x2=ones(1,10)
subplot(2,1,2)
stem(n,x2)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Unit Step Sequence')

%Exponential Sequence
a=2
x3=a.^n
figure
subplot(2,1,1)
stem(n,x3)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Exponential Sequence')

%Sinusoidal Sequence
x4=2*sin(2*pi/5*n)
subplot(2,1,2)
stem(n,x4)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Sinusoidal Sequence')

%Random Sequence
x5=5*rand(1,10)
figure
stem(n,x5)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Random Sequence')
