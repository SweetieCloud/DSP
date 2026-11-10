
// LAB 4 - EXERCISE 7 
clc;
clear;
close(winsid()); 

x = [1, 2, -3, 2, 1];        
h = [1, 0, -1, -1, 1];  

N = length(x);
M = length(h);
n_axis = 0:(N - 1);

// FOLDING & SHIFTING
y_fold = zeros(1, N);
for n = 0:(N - 1)
    acc = 0;
    for k = 0:(M - 1)
        idx = pmodulo(n - k, N) + 1;
        acc = acc + h(k + 1) * x(idx);
    end
    y_fold(n + 1) = acc;
end

disp("--- KET QUA FOLDING & SHIFTING (CIRCULAR) ---");
disp(y_fold);
// (CIRCULANT MATRIX METHOD)
H_circ = zeros(N, N);
for row = 0:(N - 1)
    for col = 0:(N - 1)
        idx_h = pmodulo(row - col, N) + 1;
        if (idx_h <= M) then
            H_circ(row + 1, col + 1) = h(idx_h);
        end
    end
end

y_matrix = (H_circ * x')';

disp("--- MA TRAN VONG H_circ ---");
disp(H_circ);
disp("--- KET QUA PHUONG PHAP MA TRAN ---");
disp(y_matrix);

Ex = sum(x .^ 2);      // Ex = 1^2 + 2^2 + (-3)^2 + 2^2 + 1^2 = 19
Ey = sum(y_fold .^ 2); // Ey = 4^2 + (-4)^2 + (-3)^2 + 0^2 + 3^2 = 50

disp("Tong nang luong Ex = " + string(Ex));
disp("Tong nang luong Ey = " + string(Ey));

figure(0);
clf();

plot(n_axis, x, 'b-o', 'LineWidth', 3, 'MarkerSize', 8);

plot(n_axis, y_fold, 'r-o', 'LineWidth', 3, 'MarkerSize', 8);

plot(n_axis, ones(n_axis) * Ex, 'g--', 'LineWidth', 3);

plot(n_axis, ones(n_axis) * Ey, 'm--', 'LineWidth', 3);

xtitle("Bai 7: figure", "n", "Gia tri");
xgrid(1); 
a = gca();
a.data_bounds = [0, -10; 4, 50];

legend(['x(n)', 'y(n)', 'E_x', 'E_y'], opt = 1);
