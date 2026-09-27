// ==========================================
// Bài tập thêm 1.1
// ==========================================
clc;
clear;
clf;

// 1. Tín hiệu liên tục x_a(t)
// Tần số F0 = 50 Hz -> T0 = 0.02 s. Vẽ trong khoảng [0, 0.04 s] (2 chu kỳ)
t = 0:0.0001:0.04;
x_a = 3*cos(100*%pi*t);

subplot(3, 1, 1);
plot(t, x_a, "r-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_a(t)");
title("1. Continuous-time signal x_a(t) = 3*cos(100*%pi*t)");

// 2. Lấy mẫu với Fs1 = 200 Hz -> Ts1 = 1/200 s
// Trong khoảng 0.04 s có n từ 0 đến 0.04*200 = 8
Fs1 = 200;
n1 = 0:8;
x1 = 3*cos(100*%pi * n1 / Fs1); // x1(n) = 3*cos(pi/2 * n)

subplot(3, 1, 2);
plot2d3("gnn", n1, x1);
xlabel("Sample index n");
ylabel("x_1(n)");
title("2. Sampled at Fs = 200 Hz: x_1(n) = 3*cos(pi/2 * n)");

// 3. Lấy mẫu với Fs2 = 75 Hz -> Ts2 = 1/75 s (Bị Aliasing)
// Trong khoảng 0.04 s có n từ 0 đến 3
Fs2 = 75;
n2 = 0:5;
x2 = 3*cos(100*%pi * n2 / Fs2); // x2(n) = 3*cos(4*pi/3 * n) = 3*cos(2*pi/3 * n)

subplot(3, 1, 3);
plot2d3("gnn", n2, x2);
xlabel("Sample index n");
ylabel("x_2(n)");
title("3. Sampled at Fs = 75 Hz: x_2(n) = 3*cos(2*pi/3 * n) (Aliasing)");
