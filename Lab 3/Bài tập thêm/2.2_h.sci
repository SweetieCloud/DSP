// ====================================================================
// CO2036 - Xử lý tín hiệu số | Lab 3 - Bài 2.2h: Phần lẻ x_o(n)
// Sinh viên: Bùi Thanh Quí - 2312865
// ====================================================================

clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị đối xứng n in [-5, 5]
n = -5:5;
x = zeros(1, length(n));
x_fold = zeros(1, length(n));

for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Tín hiệu x(-n)
    idx = -n(i);
    if (idx >= -1) && (idx <= 2) then
        x_fold(i) = 1;
    elseif (idx >= 3) && (idx <= 4) then
        x_fold(i) = 0.5;
    end
end

// Tính phần lẻ x_o(n)
xo = (x - x_fold) / 2;

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-5, -0.8; 5, 1.4];

// --- Hình 2: Phần lẻ x_o(n) ---
subplot(2, 1, 2);
plot2d3(n, xo, 5);
e = gce(); e.children.thickness = 2;
xtitle("(h) Phan le x_o(n) = [x(n) - x(-n)] / 2", "n", "x_o(n)");
xgrid(33);
gca().data_bounds = [-5, -0.8; 5, 0.8];
