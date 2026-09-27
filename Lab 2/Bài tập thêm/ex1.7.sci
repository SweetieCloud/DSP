// ==========================================
// Bài tập thêm 1.7
// ==========================================
clc;
clear;
clf;

// 1. Tín hiệu liên tục x_a(t)
// Fmax = 6000 Hz, chu kỳ nhỏ nhất là 1/6000 s. Ta quan sát trong khoảng 0.002 s
t = 0:0.00001:0.002;
x_a = 3*cos(2000*%pi*t) + 5*sin(6000*%pi*t) + 10*cos(12000*%pi*t);

subplot(2, 1, 1);
plot(t, x_a, "r-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_a(t)");
title("1. Continuous signal x_a(t) = 3*cos(2000%pi*t) + 5*sin(6000%pi*t) + 10*cos(12000%pi*t)");

// 2. Lấy mẫu với Fs = 5000 Hz
// Tín hiệu rời rạc lý thuyết sau khi gấp phổ aliasing:
// x(n) = 13*cos(0.4*pi*n) - 5*sin(0.8*pi*n)
Fs = 5000;
n = 0:10;
x_n = 3*cos(2000*%pi*n/Fs) + 5*sin(6000*%pi*n/Fs) + 10*cos(12000*%pi*n/Fs);

subplot(2, 1, 2);
plot2d3("gnn", n, x_n);
xlabel("Sample index n");
ylabel("x(n)");
title("2. Sampled signal at Fs = 5000 Hz: x(n) = 13*cos(0.4*pi*n) - 5*sin(0.8*pi*n)");
