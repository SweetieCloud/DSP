
clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị
n = -4:7;
x = zeros(1, length(n));
yb = zeros(1, length(n));

// Tạo tín hiệu gốc x(n) và x(4-n)
for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then 
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Tín hiệu yb(n) = x(4-n)
    idx = 4 - n(i);
    if (idx >= -1) && (idx <= 2) then
        yb(i) = 1;
    elseif (idx >= 3) && (idx <= 4) then
        yb(i) = 0.5;
    end
end

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-4, -0.2; 7, 1.4];

// --- Hình 2: x(4-n) ---
subplot(2, 1, 2);
plot2d3(n, yb, 5);
e = gce(); e.children.thickness = 2;
xtitle("(b) Tin hieu x(4-n)", "n", "x(4-n)");
xgrid(33);
gca().data_bounds = [-4, -0.2; 7, 1.4];
