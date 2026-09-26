clf();
clear;
 
n = -5:5;
 
u_r = n .* bool2s(n >= 0);
 
plot2d3(n, u_r, 2);
 
a = gca();
a.data_bounds = [-6, 0; 6, 5];      
a.children.children.thickness = 3;    
xgrid(12);                        
 
title('Unit Ramp Signal u_r(n)');
xlabel('n');
ylabel('u_r(n)');
