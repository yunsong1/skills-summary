clear;
p=8;
q=8;
n=0:15;
for i=1:16
x(i)=exp(-(i-1-p)^2/q);
end
figure(1);
stem(n,x);title('时域图像');xlabel('n');ylabel('x');
w=fft(x);
figure(2);
stem(n,abs(w));title('频域图像');xlabel('n');ylabel('w');
