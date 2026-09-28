// --- Bài 2.6 (b) (2): Vẽ tín hiệu y(n) = x(n^2) ---
clf();

// Định nghĩa trục thời gian n từ -3 đến 3
n = -3:3;
yn = [0, 0, 1, 1, 1, 0, 0];

// Vẽ đồ thị rời rạc
plot2d3(n, yn);

// Tùy chỉnh màu sắc và độ dày thanh xung (xanh dương, dày nét)
e = gce();
e.children(1).foreground = color('blue');
e.children(1).thickness = 3;

// Căn chỉnh khung trục tọa độ
a = gca();
a.data_bounds = [-3.5, -0.2; 3.5, 1.4];

// Bật lưới màu xanh nhạt
xgrid(33);

// Gán nhãn tiêu đề và trục
title('Output Signal y(n) = T[x(n)] = x(n^2)');
xlabel('n');
ylabel('y(n)');
