% impulse response
h = [1/2, 1, -1/2];
% 1000 samples
[H, w] = freqz(h, 1, 1000);
% normalized plot of abs
figure (1);
plot(w/pi, abs(H))
title('abs(frequency response)')
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
% normalized plot of phase
figure (2);
plot(w/pi, angle(H))
title('phase(frequency response)')
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Phase')
hold off
n = 0:16000;
x = cos((pi/4)*n)-sin((pi/2)*n)+(-1/2).^n;
y1 = filter(h, 1, x);
y2 = conv(h, x);
hold on
figure (3);
plot(y1(1:100))
title('filter()')
xlabel('Samples')
ylabel('System Output')
legend ('Input x','filter()')
hold off
hold on
figure (4);
plot( y2(1:100))
title('conv()')
xlabel('Samples')
ylabel('System Output')
legend ('Input x','conv()')
hold off
hold on
figure (5);
a1 = abs(fftshift(fft(x(1:100))));
plot(a1)
hold off
hold on
figure (6);
a2 = abs(fftshift(fft(y1(1:100))));
plot(a2)
hold off
length = 2^15-1;
n = 0:length;
x = cos((pi/4)*n) - sin((pi/2)*n) + (-1/2).^n;
tic
for c = 1:10000
fft(x);
end
toc
