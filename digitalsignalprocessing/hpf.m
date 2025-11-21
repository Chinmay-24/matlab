N=61; %Length of Impulse Response of HPF
n=0:N-1;
alpha=(N-1)/2; %Impulse Response will be shifted to right by Alpha steps
                       %so that the system becomes CAUSAL
wc=pi/4; %Cut-off frequency of HPF

%Simulate Window Functions
rectangular_window=ones(1,N);
hamming_window=0.54-0.46*cos(2*pi*n/(N-1));

%To Plot Window Sequences
subplot(2,1,1)
stem(n,rectangular_window)
grid on
xlabel('n')
ylabel('amplitude')
title('Rectangular Window')

subplot(2,1,2)
stem(n,hamming_window)
grid on
xlabel('n')
ylabel('amplitude')
title('Hamming Window')

% Impulse Response of HPF
h=-sin(wc*(n-alpha))./(pi*(n-alpha));
h(alpha+1)=1-wc/pi;

%Multiply Impulse Response with Window Functions
h_rect=h.*rectangular_window;
h_hamm=h.*hamming_window;

%To see the frequency response of the filter designed 
%Using rectangular window
fvtool(h_rect) 

%fv tool stands for filter visualization tool
%fvtool is the Matlab Command to show Impulse Response,
%Magnitude Response,Phase Response and Pole-Zero plot

%To see the frequency response of the filter designed 
%Using Hamming window
fvtool(h_hamm)

%To obtain pole-zero plot
zplane(h_rect)
