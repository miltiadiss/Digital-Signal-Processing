%% fir1
load chirp.mat;
y0 = y;
noise = 0.5*randn(size(y));
yw = y0 + noise;
b = fir1(34, 0.48, 'high', chebwin(35, 30));
freqz(b, 1, 512);
yf = filtfilt(b, 1, yw);
figure(2);
subplot(131);
plot (y0(end-99:end)); % y(1:100)
title('Original');
xlabel('Samples');
ylabel('Magnitude');
subplot(132);
plot (yw(end-99:end)); % y(1:100)
title('Noisy');
xlabel('Samples');
ylabel('Magnitude');
subplot(133);
plot (yf(end-99:end)); % y(1:100)
title('Filtered');
xlabel('Samples');
ylabel('Magnitude');
figure(3);
NumFFT = 1024;
F = linspace(-Fs/2, Fs/2, NumFFT);
subplot(131);
plot (F, abs(fftshift(fft(y0, NumFFT))));
title('Original');
xlabel('Frequency');
ylabel('Magnitude');
subplot(132);
plot (F, abs(fftshift(fft(yw, NumFFT))));
title('Noisy');
xlabel('Frequency');
ylabel('Magnitude');
subplot(133);
plot (F, abs(fftshift(fft(yf, NumFFT))));
title('Filtered');
xlabel('Frequency');
ylabel('Magnitude');
mse_fir1 = mean((yf - y0).^2);
%% firls
load chirp.mat;
y0 = y;
noise = 0.5*randn(size(y));
yw = y0 + noise;
b = firls(34, [0, 0.45, 0.5, 1], [0 0 1 1]);
freqz(b, 1, 512);
yf = filtfilt(b, 1, yw);
figure(2);
subplot(131);
plot (y0(end-99:end)); % y(1:100)
title('Original');
xlabel('Samples');
ylabel('Magnitude');
subplot(132);
plot (yw(end-99:end)); % y(1:100)
title('Noisy');
xlabel('Samples');
ylabel('Magnitude');
subplot(133);
plot (yf(end-99:end)); % y(1:100)
title('Filtered');
xlabel('Samples');
ylabel('Magnitude');
figure(3);
NumFFT = 1024;
F = linspace(-Fs/2, Fs/2, NumFFT);
subplot(131);
plot (F, abs(fftshift(fft(y0, NumFFT))));
title('Original');
xlabel('Frequency');
ylabel('Magnitude');
subplot(132);
plot (F, abs(fftshift(fft(yw, NumFFT))));
title('Noisy');
xlabel('Frequency');
ylabel('Magnitude');
subplot(133);
plot (F, abs(fftshift(fft(yf, NumFFT))));
title('Filtered');
xlabel('Frequency');
ylabel('Magnitude');
mse_firls = mean((yf - y0).^2);
%% firpm
load chirp.mat;
y0 = y;
noise = 0.5*randn(size(y));
yw = y0 + noise;
b = firpm(34, [0, 0.45, 0.5, 1], [0 0 1 1]);
freqz(b, 1, 512);
yf = filtfilt(b, 1, yw);
figure(2);
subplot(131);
plot (y0(end-99:end)); % y(1:100)
title('Original');
xlabel('Samples');
ylabel('Magnitude');
subplot(132);
plot (yw(end-99:end)); % y(1:100)
title('Noisy');
xlabel('Samples');
ylabel('Magnitude');
subplot(133);
plot (yf(end-99:end)); % y(1:100)
title('Filtered');
xlabel('Samples');
ylabel('Magnitude');
figure(3);
NumFFT = 1024;
F = linspace(-Fs/2, Fs/2, NumFFT);
subplot(131);
plot (F, abs(fftshift(fft(y0, NumFFT))));
title('Original');
xlabel('Frequency');
ylabel('Magnitude');
subplot(132);
plot (F, abs(fftshift(fft(yw, NumFFT))));
title('Noisy');
xlabel('Frequency');
ylabel('Magnitude');
subplot(133);
plot (F, abs(fftshift(fft(yf, NumFFT))));
title('Filtered');
xlabel('Frequency');
ylabel('Magnitude');
mse_firpm = mean((yf - y0).^2);
