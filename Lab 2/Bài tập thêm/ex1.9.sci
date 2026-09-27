// ==========================================
// Bài tập thêm 1.9
// ==========================================
clc;
clear;
clf;

// 1. Tín hiệu liên tục x_a(t) = sin(480*pi*t) + 3*sin(720*pi*t)
// F1 = 240 Hz, F2 = 360 Hz -> Bội chung nhỏ nhất T0 = 1/120 s ≈ 0.00833 s.
// Khảo sát t trong khoảng [0, 0.025 s] (khoảng 3 chu kỳ cơ bản)
t = 0:0.00005:0.025;
x_a = sin(480*%pi*t) + 3*sin(720*%pi*t);

subplot(2, 1, 1);
plot(t, x_a, "b-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_a(t)");
title("1. Continuous-time signal x_a(t) = sin(480*%pi*t) + 3*sin(720*%pi*t)");

// 2. Tín hiệu rời rạc lấy mẫu với Fs = 600 samples/s
// Tần số Nyquist Fs/2 = 300 Hz < F2 (360 Hz) -> Xảy ra Aliasing
// Tần số góc chuẩn hóa:
// w1 = 480*pi / 600 = 0.8*pi rad/sample
// w2 = 720*pi / 600 = 1.2*pi rad/sample -> Aliasing thành -0.8*pi rad/sample
// Tín hiệu kết quả: x(n) = sin(0.8*pi*n) + 3*sin(1.2*pi*n) = -2*sin(0.8*pi*n)
Fs = 600;
n = 0:15; // Quan sát 15 mẫu tương ứng trong khoảng thời gian trên
x_n = sin(480*%pi*n/Fs) + 3*sin(720*%pi*n/Fs);

subplot(2, 1, 2);
plot2d3("gnn", n, x_n);
xlabel("Sample index n");
ylabel("x(n)");
title("2. Sampled signal at Fs = 600 Hz: x(n) = -2*sin(0.8*%pi*n) (Aliasing)");
