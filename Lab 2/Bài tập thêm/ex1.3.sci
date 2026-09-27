// Bài tập thêm 1.3
clc;
clear;
clf;

Fs = 40; // Tần số lấy mẫu
t = 0:0.0005:0.2;  

// x1(t) = cos(20*pi*t) (F1 = 10 Hz)
x1_t = cos(20*%pi*t);
subplot(3, 1, 1);
plot(t, x1_t, "b-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_1(t)");
title("1. Continuous signal x_1(t) = cos(20*%pi*t) (F1 = 10 Hz)");

// x2(t) = cos(100*pi*t) (F2 = 50 Hz)
x2_t = cos(100*%pi*t);
subplot(3, 1, 2);
plot(t, x2_t, "g-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_2(t)");
title("2. Continuous signal x_2(t) = cos(100*%pi*t) (F2 = 50 Hz)");

// Tín hiệu rời rạc sau lấy mẫu của cả 2 tín hiệu
n = 0:8; // n = 0 đến 0.2 * 40 = 8
xn1 = cos(20*%pi * n / Fs);  // cos(pi/2 * n)
xn2 = cos(100*%pi * n / Fs); // cos(5*pi/2 * n) = cos(pi/2 * n)

subplot(3, 1, 3);
plot2d3("gnn", n, xn1);
xlabel("Sample index n");
ylabel("x(n)");
title("3. Sampled signals at Fs = 40 Hz: x_1(n) identical to x_2(n) = cos(pi/2 * n)");
