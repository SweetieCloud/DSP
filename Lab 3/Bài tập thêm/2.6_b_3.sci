// --- Bài 2.6 (b) (3): Vẽ tín hiệu y'_2(n) = y(n - 2) ---
clf();

// Định nghĩa trục thời gian n từ -1 đến 5
n = -1:5;
y2_prime = [0, 0, 1, 1, 1, 0, 0]; // Giá trị bằng 1 tại n = 1, 2, 3

// Vẽ đồ thị xung rời rạc
plot2d3(n, y2_prime);

// Chỉnh màu xanh dương và độ dày thanh xung
e = gce();
e.children(1).foreground = color('blue');
e.children(1).thickness = 3;

// Căn chỉnh trục hiển thị
a = gca();
a.data_bounds = [-1.5, -0.2; 5.5, 1.4];

// Bật ô lưới màu xanh nhạt
xgrid(33);

// Gán nhãn trục và tiêu đề
title("Delayed Output Signal y''_2(n) = y(n - 2)");
xlabel('n');
ylabel("y''_2(n)");
