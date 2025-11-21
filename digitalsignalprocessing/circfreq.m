x=input('Enter the sequence x(n)')
N=length(x)
l=input('Enter the value of l')

n=0:N-1
x1=exp(j*2*pi/N*l*n).*x
lhs=fft(x1)

X=fft(x)
rhs=circshift(X,l,2) %Circular shift

if round(lhs,4)==round(rhs,4) %round off to 4 decimal places
    disp('Circular frequency shift property is verified')
end
