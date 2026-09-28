// --- Bài 2.6 (b) (6): So sánh y(n - 2) và y_2(n) ---
clf();

// Định nghĩa trục thời gian chung từ -4 đến 4
n = -4:4;

// y(n - 2): bằng 1 tại n = 1, 2, 3
y_delayed = [0, 0, 0, 0, 0, 1, 1, 1, 0];

// y_2(n): bằng 1 tại n = -2, 2
y2 = [0, 0, 1, 0, 0, 0, 1, 0, 0];

// --- Đồ thị 1: Tín hiệu y(n - 2) ---
subplot(2, 1, 1);
plot2d3(n, y_delayed);
e1 = gce();
e1.children(1).foreground = color('blue');
e1.children(1).thickness = 3;
a1 = gca();
a1.data_bounds = [-4.5, -0.2; 4.5, 1.4];
xgrid(33);
title('Delayed Output Signal: y(n - 2)');
xlabel('n');
ylabel('y(n - 2)');

// --- Đồ thị 2: Tín hiệu y_2(n) = T[x(n - 2)] ---
subplot(2, 1, 2);
plot2d3(n, y2);
e2 = gce();
e2.children(1).foreground = color('red');
e2.children(1).thickness = 3;
a2 = gca();
a2.data_bounds = [-4.5, -0.2; 4.5, 1.4];
xgrid(33);
title('Response to Delayed Input: y_2(n) = T[x(n - 2)]');
xlabel('n');
ylabel('y_2(n)');
