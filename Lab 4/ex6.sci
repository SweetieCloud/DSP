 
clc;
clear;
close(winsid());   
x = [1, 2, -3, 2, 1];   
h = [1, 0, -1];         

Lx = length(x);
Lh = length(h);
Ly = Lx + Lh - 1;        

nx = 0:(Lx - 1);
ny = 0:(Ly - 1);

// (FOLDING AND SHIFTING) 
y_fold = zeros(1, Ly);
for n = 0:(Ly - 1)
    acc = 0;
    for k = 0:(Lx - 1)
        shift_idx = n - k;
        if (shift_idx >= 0 & shift_idx < Lh) then
            acc = acc + x(k + 1) * h(shift_idx + 1);
        end
    end
    y_fold(n + 1) = acc;
end

disp("--- KET QUA FOLDING & SHIFTING ---");
disp(y_fold);

//(MATRIX METHOD)
H = zeros(Ly, Lx);
for col = 1:Lx
    H(col : col + Lh - 1, col) = h';
end
y_matrix = (H * x')';

disp("--- KET QUA PHUONG PHAP MA TRAN ---");
disp(y_matrix);

Ex = sum(x .^ 2);          // Ex = 1^2 + 2^2 + (-3)^2 + 2^2 + 1^2 = 19
Ey = sum(y_fold .^ 2);     // Ey = 1^2 + 2^2 + (-4)^2 + 0^2 + 4^2 + (-2)^2 + (-1)^2 = 42

disp("Tong nang luong Ex = " + string(Ex));
disp("Tong nang luong Ey = " + string(Ey));

figure(0);
clf();

subplot(3, 1, 1);
plot(nx, x, 'b.-', 'LineWidth', 3, 'MarkerSize', 15);
xtitle("Tin hieu x(n)", "n", "Gia tri");
xgrid(1); 
subplot(3, 1, 2);
plot(ny, y_fold, 'r-o', 'LineWidth', 3, 'MarkerSize', 8);
xtitle("Tin hieu y(n) = x(n) * h(n)", "n", "Gia tri");
xgrid(1);

subplot(3, 1, 3);
plot(nx, ones(nx) * Ex, 'g-', 'LineWidth', 3);
plot(ny, ones(ny) * Ey, 'm-', 'LineWidth', 3);
xtitle("Nang luong cua cac tin hieu", "n", "Nang luong");
xgrid(1);

legend(["E_x = " + string(Ex), "E_y = " + string(Ey)], opt = 1);
