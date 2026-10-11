clc; clear;
if ~isempty(winsid()) then xdel(winsid()); end

// Miền thời gian hiển thị đối xứng
n = -4:4;
x = zeros(1, length(n));
yf = zeros(1, length(n));

for i = 1:length(n)
    // Tín hiệu x(n)
    if (n(i) >= -1) && (n(i) <= 2) then
        x(i) = 1;
    elseif (n(i) >= 3) && (n(i) <= 4) then
        x(i) = 0.5;
    end
    
    // Tín hiệu yf(n) = x(n^2)
    idx = n(i)^2;
    if (idx >= -1) && (idx <= 2) then
        yf(i) = 1;
    elseif (idx >= 3) && (idx <= 4) then
        yf(i) = 0.5;
    end
end

scf(0);
// --- Hình 1: Tín hiệu gốc x(n) ---
subplot(2, 1, 1);
plot2d3(n, x, 2);
e = gce(); e.children.thickness = 2;
xtitle("Tin hieu goc x(n)", "n", "x(n)");
xgrid(33);
gca().data_bounds = [-4, -0.2; 4, 1.4];

// --- Hình 2: x(n^2) ---
subplot(2, 1, 2);
plot2d3(n, yf, 5);
e = gce(); e.children.thickness = 2;
xtitle("(f) Tin hieu x(n^2)", "n", "x(n^2)");
xgrid(33);
gca().data_bounds = [-4, -0.2; 4, 1.4];
