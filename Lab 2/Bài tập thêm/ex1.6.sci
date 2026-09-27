// Bài tập thêm 1.6
clc;
clear;
clf;

n = 0:32; 

// x1(n) = cos(pi/4 * n), N = 8 mẫu
x1 = cos(%pi/4 * n);
subplot(3, 1, 1);
plot2d3("gnn", n, x1);
xlabel("Sample index n");
ylabel("x_1(n)");
title("1. Periodic signal x_1(n) = cos(pi/4 * n) with period N = 8 samples");

// x2(n) = sin(pi/8 * n), N = 16 mẫu
x2 = sin(%pi/8 * n);
subplot(3, 1, 2);
plot2d3("gnn", n, x2);
xlabel("Sample index n");
ylabel("x_2(n)");
title("2. Periodic signal x_2(n) = sin(pi/8 * n) with period N = 16 samples");

// x3(n) = cos(n), Non-periodic
x3 = cos(n);
subplot(3, 1, 3);
plot2d3("gnn", n, x3);
xlabel("Sample index n");
ylabel("x_3(n)");
title("3. Non-periodic signal x_3(n) = cos(n)");
