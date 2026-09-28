// --- Bài 2.6 (b) (4): Vẽ tín hiệu x_2(n) = x(n - 2) ---
clf();

// Định nghĩa trục thời gian n từ 0 đến 7
n = 0:7;
x2 = [0, 0, 1, 1, 1, 1, 0, 0]; // Giá trị bằng 1 tại n = 2, 3, 4, 5

// Vẽ đồ thị xung rời rạc
plot2d3(n, x2);

// Chỉnh màu xanh dương và độ dày thanh xung
e = gce();
e.children(1).foreground = color('blue');
e.children(1).thickness = 3;

// Căn chỉnh trục hiển thị
a = gca();
a.data_bounds = [-0.5, -0.2; 7.5, 1.4];

// Bật ô lưới màu xanh nhạt
xgrid(33);

// Gán nhãn trục và tiêu đề
title('Delayed Input Signal x_2(n) = x(n - 2)');
xlabel('n');
ylabel('x_2(n)');
