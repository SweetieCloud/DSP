// ====================================================================
// CO2036 - Xử lý tín hiệu số | Lab 3 - Bài 2.2d: x(n)u(2-n)
// Sinh viên: Bùi Thanh Quí - 2312865
// ====================================================================

clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị
n = -3:6;
x = zeros(1, length(n));
yd = zeros(1, length(n));

// Tạo tín hiệu gốc x(n) và x(n)u(2-n)
for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Hàm nấc đơn vị đảo u(2-n): bằng 1 khi n <= 2, bằng 0 khi n > 2
    u_step = 0;
    if n(i) <= 2 then
        u_step = 1;
    end
    
    yd(i) = x(i) * u_step;
end

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-3, -0.2; 6, 1.4];

// --- Hình 2: x(n)u(2-n) ---
subplot(2, 1, 2);
plot2d3(n, yd, 5);
e = gce(); e.children.thickness = 2;
xtitle("(d) Tin hieu x(n)u(2-n)", "n", "x(n)u(2-n)");
xgrid(33);
gca().data_bounds = [-3, -0.2; 6, 1.4];
