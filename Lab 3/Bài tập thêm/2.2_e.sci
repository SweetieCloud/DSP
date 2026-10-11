// ====================================================================
// CO2036 - Xử lý tín hiệu số | Lab 3 - Bài 2.2e: x(n-1)delta(n-3)
// Sinh viên: Bùi Thanh Quí - 2312865
// ====================================================================

clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị
n = -3:6;
x = zeros(1, length(n));
ye = zeros(1, length(n));

for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Xung đơn vị delta(n-3): bằng 1 chỉ tại n = 3
    delta_val = 0;
    if n(i) == 3 then
        delta_val = 1;
    end
    
    // Tính x(n-1)
    x_prev = 0;
    idx = n(i) - 1;
    if (idx >= -1) && (idx <= 2) then
        x_prev = 1;
    elseif (idx >= 3) && (idx <= 4) then
        x_prev = 0.5;
    end
    
    ye(i) = x_prev * delta_val;
end

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-3, -0.2; 6, 1.4];

// --- Hình 2: x(n-1)delta(n-3) ---
subplot(2, 1, 2);
plot2d3(n, ye, 5);
e = gce(); e.children.thickness = 2;
xtitle("(e) Tin hieu x(n-1)delta(n-3)", "n", "x(n-1)delta(n-3)");
xgrid(33);
gca().data_bounds = [-3, -0.2; 6, 1.4];
