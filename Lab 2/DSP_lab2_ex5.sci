clf();
clear;

n = -1:1;
x = [1, 3, -2];

x_flipped = x($:-1:1);

x_e = 0.5 * (x + x_flipped);
x_o = 0.5 * (x - x_flipped);

// Vẽ 3 đồ thị
// Đồ thị x(n) 
subplot(3, 1, 1);
plot2d3(n, x, 5);
a1 = gca();
a1.data_bounds = [-1, -2.1; 1, 3.2];   
a1.children.children.thickness = 3;    
xgrid(12);                             
title('Discrete-time signal x(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị x_e(n) 
subplot(3, 1, 2);
plot2d3(n, x_e, 2);
a2 = gca();
a2.data_bounds = [-1, -1; 1, 3.2];
a2.children.children.thickness = 3;
xgrid(12);
title('Even component x_e(n)');
xlabel('n');
ylabel('Amplitude');

// Đồ thị x_o(n) 
subplot(3, 1, 3);
plot2d3(n, x_o, 3);
a3 = gca();
a3.data_bounds = [-1, -2; 1, 2];
a3.children.children.thickness = 3;
xgrid(12);
title('Odd component x_o(n)');
xlabel('n');
ylabel('Amplitude');
