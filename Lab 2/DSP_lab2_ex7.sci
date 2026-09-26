// Xóa biến và đồ thị cũ
clf();
clear;

// 1. Trục thời gian chung và các tín hiệu
n = -1:3;

// Đồng bộ chiều dài các tín hiệu trên trục n = -1:3
x1 = [0, 0, 1, 3, -2]; // n = -1 thì x1(-1) = 0
x2 = [0, 1, 2, 3,  0]; // n =  3 thì x2(3)  = 0

// Phép nhân từng phần tử: y(n) = x1(n) .* x2(n)
y = x1 .* x2;

// 2. Vẽ 3 đồ thị
// Đồ thị x1(n) - Màu đỏ (color = 5)
subplot(3, 1, 1);
plot2d3(n, x1, 5);
a1 = gca();
a1.data_bounds = [-1, -2.5; 3, 3.5];   // Giới hạn trục n từ -1 đến 3
a1.children.children.thickness = 3;     // Nét vẽ to và đậm
xgrid(12);                             // Lưới nét đứt
title('Discrete-time signal x_1(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị x2(n) - Màu xanh dương (color = 2)
subplot(3, 1, 2);
plot2d3(n, x2, 2);
a2 = gca();
a2.data_bounds = [-1, -0.5; 3, 3.5];
a2.children.children.thickness = 3;
xgrid(12);
title('Discrete-time signal x_2(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị y(n) = x1(n) .* x2(n) - Màu xanh lá (color = 3)
subplot(3, 1, 3);
plot2d3(n, y, 3);
a3 = gca();
a3.data_bounds = [-1, -0.5; 3, 9.5];   // Đỉnh tích y(2) = 9 nên đặt trục Y đến 9.5
a3.children.children.thickness = 3;
xgrid(12);
title('Product signal y(n) = x_1(n) .* x_2(n)');
xlabel('n');
ylabel('Amplitude');
