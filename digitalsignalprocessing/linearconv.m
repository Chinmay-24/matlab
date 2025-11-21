%Read the input signals
x=input('Enter the input sequence')
h=input('Enter the impulse response')

lx=length(x)
lh=length(h)
ly=lx+lh-1  % Length of the output sequence

%Linear Convolution 
for n = 0:ly-1
    y(n+1) = 0
    for k=0:lx-1
        if((n-k)>=0 & (n-k)<lh)
            y(n+1) = y(n+1)+ x(k+1)*h(n-k+1)
        end
    end
end
   
%To verify the output using inbuilt command
y1=conv(x,h) %y1 should be equal to y

%Sketching the signals
n=0:lx-1
subplot(3,1,1)
stem(n,x)
xlim([0,6])
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Input Sequence')

n=0:lh-1
subplot(3,1,2)
stem(n,h)
xlim([0,6])
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Impulse Response')

n=0:ly-1
subplot(3,1,3)
stem(n,y)
xlim([0,6])
grid on
xlabel('Discrete Time')
ylabel('Amplitude')
title('Output of Convolution')
