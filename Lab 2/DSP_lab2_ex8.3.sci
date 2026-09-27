clf();
clear;
n = -2:1;
x = [1, -2, 3, 6];

// Tín hiệu biến đổi y3(n) = 2*x(-n - 2)
n3 = -3:0;
y3 = [12, 6, -4, 2];

// Original signal x(n)
subplot(2, 1, 1);
plot2d3(n, x, 2);
a1 = gca();
a1.data_bounds = [-2, -2; 1, 6];
a1.children.children.thickness = 3;
xgrid(12);
title('Original signal x(n)');
xlabel('n');
ylabel('Amplitude');

// Manipulated signal y_3(n) = 2x(-n - 2) 
subplot(2, 1, 2);
plot2d3(n3, y3, 3);
a3 = gca();
a3.data_bounds = [-3, -4.5; 0, 12.5];
a3.children.children.thickness = 3;
xgrid(12);
title('Manipulated signal y_3(n) = 2x(-n - 2)');
xlabel('n');
ylabel('Amplitude');
