x1=input('Enter the samples of first signal')
x2=input('Enter the samples of second signal')

if length(x1)>length(x2)
    x2=[x2,zeros(1,length(x1)-length(x2))]
end

if length(x2)>length(x1)
    x1=[x1,zeros(1,length(x2)-length(x1))]
end

%Addition of signals
x3=x1+x2

%Multiplication of signals
x4=x1.*x2

n=0:length(x4)-1

subplot(2,1,1)
stem(n,x1)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('First Signal')

subplot(2,1,2)
stem(n,x2)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Second Signal')

figure
subplot(2,1,1)
stem(n,x3)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Sum Signal')

subplot(2,1,2)
stem(n,x4)
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Product Signal')
