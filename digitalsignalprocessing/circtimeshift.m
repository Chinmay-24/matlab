x=input('Enter the sequence x(n)')
N=length(x)
l=input('Enter the value of l')

x1=circshift(x,l,2) %circular shift
lhs=fft(x1)
k=0:N-1
rhs=exp(-j*2*pi/N*l*k).*fft(x)

if round(lhs,4)==round(rhs,4) %round off to 4 decimal places
    disp('Circular time shift property is verified')
end
