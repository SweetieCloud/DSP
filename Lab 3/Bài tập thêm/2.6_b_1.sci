clf();
n = -2:5;
xn = [0, 0, 1, 1, 1, 1, 0, 0];

plot2d3(n, xn);
e = gce();
e.children(1).foreground = color('blue');
e.children(1).thickness = 3;
a = gca();
a.data_bounds = [-2.5, -0.2; 5.5, 1.4];
xgrid(33);
title('Signal x(n)');
xlabel('n');
ylabel('x(n)');
