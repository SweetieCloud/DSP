// --- Bài 2.6 (b) (5): Vẽ tín hiệu y_2(n) = T[x_2(n)] = x_2(n^2) ---
clf();

// Định nghĩa trục thời gian n từ -4 đến 4
n = -4:4;
y2 = [0, 0, 1, 0, 0, 0, 1, 0, 0]; // Bằng 1 tại n = -2 và n = 2

// Vẽ đồ thị xung rời rạc
plot2d3(n, y2);

// Chỉnh màu xanh dương và độ dày thanh xung
e = gce();
e.children(1).foreground = color('blue');
e.children(1).thickness = 3;

// Căn chỉnh trục hiển thị
a = gca();
a.data_bounds = [-4.5, -0.2; 4.5, 1.4];

// Bật ô lưới màu xanh nhạt
xgrid(33);

// Gán nhãn trục và tiêu đề
title('Output Signal y_2(n) = T[x_2(n)] = x_2(n^2)');
xlabel('n');
ylabel('y_2(n)');
