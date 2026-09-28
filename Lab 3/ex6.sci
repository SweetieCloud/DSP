function [yn, yorigin] = convolution_signal(xn, xorigin, hn, horigin)
    // 1. Thực hiện tích chập hai tín hiệu bằng hàm conv() tích hợp của Scilab
    yn = conv(xn, hn);
    
    // 2. Xác định vị trí gốc tọa độ n = 0 của tín hiệu đầu ra y(n)
    yorigin = xorigin + horigin - 1;
    
    // 3. Xác định trục thời gian riêng của từng tín hiệu
    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;
    ny = (1:length(yn)) - yorigin;
    
    // 4. Xác định cận trục n chung để đồng bộ tỷ lệ hiển thị trên cả 3 đồ thị
    n_min = min([min(nx), min(nh), min(ny)]);
    n_max = max([max(nx), max(nh), max(ny)]);
    
    // 5. Vẽ đồ thị trên cùng một figure
    clf();
    
    // --- Subplot 1: Signal x(n) ---
    subplot(3, 1, 1);
    plot2d3(nx, xn);
    e1 = gce();
    e1.children(1).foreground = color('blue');
    e1.children(1).thickness = 3;
    a1 = gca();
    a1.data_bounds = [n_min, min(xn) - 1; n_max, max(xn) + 1];
    xgrid(33);
    title('Input Signal x(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Subplot 2: Impulse Response h(n) ---
    subplot(3, 1, 2);
    plot2d3(nh, hn);
    e2 = gce();
    e2.children(1).foreground = color('red');
    e2.children(1).thickness = 3;
    a2 = gca();
    a2.data_bounds = [n_min, min(hn) - 1; n_max, max(hn) + 1];
    xgrid(33);
    title('Impulse Response h(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Subplot 3: Convolution Signal y(n) = x(n) * h(n) ---
    subplot(3, 1, 3);
    plot2d3(ny, yn);
    e3 = gce();
    e3.children(1).foreground = color('darkgreen');
    e3.children(1).thickness = 3;
    a3 = gca();
    a3.data_bounds = [n_min, min(yn) - 1; n_max, max(yn) + 1];
    xgrid(33);
    title('Convolution Signal y(n) = x(n) * h(n)');
    xlabel('n');
    ylabel('Amplitude');
endfunction

// ==========================================
// THỰC THI KIỂM TRA (Ví dụ bài 6)
// ==========================================
xn = [0, 1, 3, -2];
xorigin = 1;

hn = [1, 1, 2, 3];
horigin = 2;

[yn, yorigin] = convolution_signal(xn, xorigin, hn, horigin);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
