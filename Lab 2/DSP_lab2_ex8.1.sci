clf();
clear;

// Tín hiệu gốc x(n)
n = -2:1;
x = [1, -2, 3, 6];

// Tín hiệu biến đổi y1(n) = x(-n)
n1 = -1:2;
y1 = [6, 3, -2, 1];

// 1. Original signal x(n) - Màu xanh dương (color = 2)
subplot(2, 1, 1);
plot2d3(n, x, 2);
a1 = gca();
a1.data_bounds = [-2, -2; 1, 6];
a1.children.children.thickness = 3;
xgrid(12);
title('Original signal x(n)');
xlabel('n');
ylabel('Amplitude');

// 2. Manipulated signal y_1(n) = x(-n) - Màu cyan/xanh lơ (color = 4)
subplot(2, 1, 2);
plot2d3(n1, y1, 4);
a2 = gca();
a2.data_bounds = [-1, -2; 2, 6];
a2.children.children.thickness = 3;
xgrid(12);
title('Manipulated signal y_1(n) = x(-n)');
xlabel('n');
ylabel('Amplitude');
