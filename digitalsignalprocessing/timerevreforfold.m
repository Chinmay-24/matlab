x=[1,2,3,4]
n=0:length(x)-1
subplot(3,1,1)
stem(n,x)
xlim([-4,4]) %To limit x axis from -4 to 4
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Original Signal')

%Reflection
n1=-n
subplot(2,1,2)
stem(n1,x)
xlim([-4,4]) %To limit x axis from -4 to 4
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Reflected Signal')
