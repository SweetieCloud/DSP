clc;
clear;

if ~isempty(winsid()) then
    xdel(winsid());
end

// 1. Khai báo tín hiệu ban đầu x(n)
n_x = -5:5;
x = zeros(1, length(n_x));

for i = 1:length(n_x)
    n_val = n_x(i);
    if (n_val >= -3) && (n_val <= -1) then
        x(i) = 1 + n_val / 3;
    elseif (n_val >= 0) && (n_val <= 3) then
        x(i) = 1;
    else
        x(i) = 0;
    end
end

// 2. Tính toán các biến đổi tín hiệu
n_common = -8:8;
x1 = zeros(1, length(n_common)); // x1(n) = x(-n + 4)
x2 = zeros(1, length(n_common)); // x2(n) = x(-n - 4)

for i = 1:length(n_common)
    n_val = n_common(i);
    
    // Tính x1(n) = x(-n + 4)
    idx_1 = -n_val + 4;
    if (idx_1 >= -3) && (idx_1 <= -1) then
        x1(i) = 1 + idx_1 / 3;
    elseif (idx_1 >= 0) && (idx_1 <= 3) then
        x1(i) = 1;
    end
    
    // Tính x2(n) = x(-n - 4)
    idx_2 = -n_val - 4;
    if (idx_2 >= -3) && (idx_2 <= -1) then
        x2(i) = 1 + idx_2 / 3;
    elseif (idx_2 >= 0) && (idx_2 <= 3) then
        x2(i) = 1;
    end
end
scf(0); 

// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(3, 1, 1);
plot2d3(n_x, x, 2);
e = gce();
e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
a = gca();
a.data_bounds = [-5, -0.2; 5, 1.4];

// --- Hình 2: x1(n) = Fold x(n) rồi Delay 4 ---
subplot(3, 1, 2);
plot2d3(n_common, x1, 5);
e = gce();
e.children.thickness = 2;
xtitle("(b1) Fold x(n) roi Delay 4: x1(n) = x(-n + 4)", "n", "x1(n)");
xgrid(33);
a = gca();
a.data_bounds = [-8, -0.2; 8, 1.4];

// --- Hình 3: x2(n) = Delay x(n) 4 rồi Fold ---
subplot(3, 1, 3);
plot2d3(n_common, x2, 3);
e = gce();
e.children.thickness = 2;
xtitle("(b2) Delay x(n) 4 roi Fold: x2(n) = x(-n - 4)", "n", "x2(n)");
xgrid(33);
a = gca();
a.data_bounds = [-8, -0.2; 8, 1.4];
