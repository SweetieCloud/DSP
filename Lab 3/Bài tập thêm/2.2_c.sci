clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị rộng hơn về bên trái
n = -5:6;
x = zeros(1, length(n));
yc = zeros(1, length(n));

// Tạo tín hiệu gốc x(n) và x(n+2)
for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Tín hiệu yc(n) = x(n+2)
    idx = n(i) + 2;
    if (idx >= -1) && (idx <= 2) then
        yc(i) = 1;
    elseif (idx >= 3) && (idx <= 4) then
        yc(i) = 0.5;
    end
end

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-5, -0.2; 6, 1.4];

// --- Hình 2: x(n+2) ---
subplot(2, 1, 2);
plot2d3(n, yc, 5);
e = gce(); e.children.thickness = 2;
xtitle("(c) Tin hieu x(n+2)", "n", "x(n+2)");
xgrid(33);
gca().data_bounds = [-5, -0.2; 6, 1.4];
