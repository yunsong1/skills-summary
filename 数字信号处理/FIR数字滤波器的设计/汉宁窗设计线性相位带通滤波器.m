N=15;%N=45
wn=[0.3, 0.5];
window=hanning(N+1);
b=fir1(N,wn,window); [H, w]=freqz(b) ;
figure(1);plot(w/pi,20*log10(abs(H)));grid;
xlabel('归一化频率');
ylabel('幅度');
title('幅频响应');
figure(2);plot(w/pi,angle(H));grid;
xlabel('归一化频率');
ylabel('相位');
title('相位响应');
