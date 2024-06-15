clear;
n=0:1:7  %n=1:1:31;
% x1为三角波序列时域特性，x2为反三角波时域特性
x1=zeros(size(n));
x2=zeros(size(n));
xa=(n>=0)&(n<=3);x1(xa)=n(xa);x2(xa)=4-n(xa);
xa=(n>=4)&(n<=7);x1(xa)=8-n(xa);x2(xa)=n(xa)-4; 
%xa=(n>=8)&(n<=31);x1(xa)=0;x2(xa)=0;
fp1=fft(x1);fp1=abs(fp1);
fp2=fft(x2);fp2=abs(fp2);
% fp1为三角波序列幅频特性，fp2为反三角波幅频特性
subplot(2,2,1);stem(n,x1,'.');xlabel('n');
ylabel('时域特性');title('三角波序列');
subplot(2,2,2);stem(n,fp1,'.');
xlabel('n');ylabel('幅频特性');title('三角波序列');
subplot(2,2,3);stem(n,x2,'.');
xlabel('n');ylabel('时域特性');title('反三角波序列');
subplot(2,2,4);stem(n,fp2,'.');
xlabel('n');ylabel('幅频特性');title('反三角波序列');
