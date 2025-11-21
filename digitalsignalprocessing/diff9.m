x=[1,zeros(1,9)] %To simulate unit impulse
y(1)=x(1) %This is actually y(0)
y(2)=0.9*y(1)+x(2) %This is actually y(1)
for n=3:10
    y(n)=0.9*y(n-1)+x(n)
end

%To obtain impulse response using inbuilt command
a=[1,-0.9] %Coefficients of y(n) & y(n-1)
b=[1] %Coefficients of x(n)
x=[1,zeros(1,9)] %To simulate unit impulse
y1=filter(b,a,x) %To find the output due to unit impulse

%To plot the impulse response
stem(y)
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Impulse Response')

%To obtain pole-zero plot
a=[1,-0.9] %coefficients of y(n) and y(n-1)
b=[1] %coefficient of x(n)
figure
zplane(b,a)
title('pole-zero plot')

%To plot magnitude response and phase response
figure
freqz(b,a)
title('Magnitude Response and Phase Response')
