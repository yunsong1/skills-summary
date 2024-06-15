clear;
n=0:15;
a=0.1;
f=0.0625;        #f=0.4375,f=0.5625
xb=exp(-a*n).*sin(2*pi*f*n);
subplot(2,1,1);
plot(n,xb);
yb=fft(xb);
yb=abs(yb);
subplot(2,1,2);
stem(n,yb);
