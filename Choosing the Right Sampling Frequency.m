% Bora Kýþ Ödev 1 05/03/2019
Ts = 1/200; % fs=200 Hz (Örnekleme Periyodu)
ts = 0:Ts:2; % Zaman Vektörü
x1 = cos(2*pi*4*ts); %Sinyal
subplot(3,1,1); stem(ts,x1);
axis([0 2 0 1]);
title('200 Hz'); % Baþlýk
Ts1 = 1/1000; % fs=1000 Hz (Örnekleme Periyodu)
ts1 = 0:Ts1:2; % Zaman Vektörü
x2 = cos(2*pi*4*ts1); % Sinyal
subplot(3,1,2); stem(ts1,x2);
axis([0 2 0 1]);
title('1000 Hz'); % Baþlýk
Ts2 = 1/4000; % fs=4000 Hz (Örnekleme Periyodu)
ts2 = 0:Ts2:2; % Zaman Vektörü
x3 = cos(2*pi*4*ts2); % Sinyal
subplot(3,1,3); stem(ts2,x3);
axis([0 2 0 1]);
FT_X1 = fftshift(x1)/length(ts);
f = linspace (-Ts/2 , Ts/2 , length(FT_X1));
plot(f,abs(FT_X1));
title('4000 Hz'); % Baþlýk