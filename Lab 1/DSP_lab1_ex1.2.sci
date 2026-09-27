// Lab 1: Exercise 1.2
clc;
clear;
clf;

t = linspace(0, 0.1, 1000);
x_a = 3 * sin(100 * %pi * t);

subplot(3, 1, 1);
plot(t, x_a, "r-", "LineWidth", 1.5);
xlabel("t (s)");
ylabel("x_a(t)");
title("1. Continuous-time signal x_a(t) in 5 periods");

n = 0:29;
x_n = 3 * sin(%pi * n / 3);

subplot(3, 1, 2);
plot2d3("gnn", n, x_n);
xlabel("Sample index n");
ylabel("x(n)");
title("2. Discrete-time signal x(n) in 5 periods (Period N = 6 samples)");

delta = 0.1;
x_q = delta * floor(x_n / delta);

subplot(3, 1, 3);
plot2d3("gnn", n, x_q, 2);
xlabel("Sample index n");
ylabel("x_q(n)");
title("3. Quantized signal x_q(n) (Delta = 0.1, Truncated method)");
