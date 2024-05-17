%%fir1()
N = 29;
fc = 0.4;
hc1 = fir1(N-1, fc, 'low');
hc2 = fir1(N-1, fc, 'high');
NumFFT = 4096;
Freqs = linspace(-pi, pi, NumFFT);
figure(1);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(hc1, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('Low-Pass')
hold off
figure(2);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(hc2, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('High-Pass')
hold off
%%firls
N = 29;
h_low = firls(N-1, [0, 0.1, 0.35, 1], [1 1 0 0]);
h_high = firls(N-1, [0, 0.1, 0.35, 1], [0 0 1 1]);
NumFFT = 4096;
Freqs = linspace(-pi, pi, NumFFT);
figure(1);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(h_low, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('Low-Pass')
hold off
figure(2);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(h_high, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('High-Pass')
hold off
%%firpm()
N = 29;
h_low = firpm(N-1, [0, 0.1, 0.35, 1], [1 1 0 0]);
h_high = firpm(N-1, [0, 0.1, 0.35, 1], [0 0 1 1]);
NumFFT = 4096;
Freqs = linspace(-pi, pi, NumFFT);
figure(1);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(h_low, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('Low-Pass')
hold off
figure(2);
plot(Freqs/pi, 20*log10(abs(fftshift(fft(h_high, NumFFT)))));
title('Filter Frequency Response (dB Scale)');
xlabel('Normalized Frequency (\times\pi rad/sample)')
ylabel('Magnitude')
legend ('High-Pass')
hold off
