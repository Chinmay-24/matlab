x1=input('Enter the first sequence')
x2=input('Enter the second sequence')
%x1 and x2 must be of same length
a=input('Enter the first constant')
b=input('Enter the second constant')

lhs=fft(a*x1+b*x2)
rhs=a*fft(x1)+b*fft(x2)

if lhs==rhs
    disp('Linearity property is verified')
end
