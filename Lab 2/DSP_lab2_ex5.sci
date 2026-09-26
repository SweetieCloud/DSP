// Xóa biến và đồ thị cũ
clf();
clear;

// 1. Tín hiệu và trục thời gian
n = -1:1;
x = [1, 3, -2];

// Tín hiệu đảo x(-n)
x_flipped = x($:-1:1);

// 2. Tính thành phần chẵn và lẻ
x_e = 0.5 * (x + x_flipped);
x_o = 0.5 * (x - x_flipped);

// 3. Vẽ 3 đồ thị
// Đồ thị x(n) - Màu đỏ (color = 5)
subplot(3, 1, 1);
plot2d3(n, x, 5);
a1 = gca();
a1.data_bounds = [-1, -2.1; 1, 3.2];   // Giới hạn trục n từ -1 đến 1 giống hình mẫu
a1.children.children.thickness = 3;     // Độ dày nét vẽ đậm
xgrid(12);                             // Bật lưới nét đứt giống hình mẫu
title('Discrete-time signal x(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị x_e(n) - Màu xanh dương (color = 2)
subplot(3, 1, 2);
plot2d3(n, x_e, 2);
a2 = gca();
a2.data_bounds = [-1, -1; 1, 3.2];
a2.children.children.thickness = 3;
xgrid(12);
title('Even component x_e(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị x_o(n) - Màu xanh lá (color = 3)
subplot(3, 1, 3);
plot2d3(n, x_o, 3);
a3 = gca();
a3.data_bounds = [-1, -2; 1, 2];
a3.children.children.thickness = 3;
xgrid(12);
title('Odd component x_o(n)');
xlabel('n');
ylabel('Amplitude');
