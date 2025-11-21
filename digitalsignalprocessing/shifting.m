x=[1,2,3,4,5,6]
n=0:length(x)-1
subplot(3,1,1)
stem(n,x)
xlim([-4,8])%To limit x axis from -4 to 8
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Original Signal')

%Right Shift
n1=n+2
subplot(3,1,2)
stem(n1,x)
xlim([-4,8])%To limit x axis from -4 to 8
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Right Shifted Signal')

%Left Shift
n2=n-2
subplot(3,1,3)
stem(n2,x)
xlim([-4,8])%To limit x axis from -4 to 8
grid on 
xlabel('Discrete Time')
ylabel('Amplitude')
title('Left Shifted Signal')
