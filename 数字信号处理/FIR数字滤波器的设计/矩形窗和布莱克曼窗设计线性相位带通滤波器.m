%(1)矩形窗
N=15;%N=45
wn=[0.3,0.5];
b=fir1(N,wn, boxcar(N+1) );
[H,w]=freqz(b,1,512);
figure(1);plot (w/pi,20*log10(abs(H)));grid;
xlabel('归一化频率');
ylabel('幅度');
title('幅频响应');
figure(2);plot(w/pi,angle(H));grid;
xlabel('归一化频率');
ylabel('相位');
title('相频响应');

%(2）布莱克曼窗
N=15;%N=45
wn=[0.3,0.5];
window=blackman(N+1);
b=fir1(N,wn,window);
[H,w]=freqz(b);
figure(1);plot(w/pi,20*log10(abs(H)));grid;
xlabel('归一化频率');
ylabel('幅度');
title('幅频响应');
figure(2);plot(w/pi,angle(H));grid;
xlabel('归一化频率');
ylabel('相位');
title('相频响应');
