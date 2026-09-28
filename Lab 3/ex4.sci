function [yn, yorigin] = add_signal(x1n, x1origin, x2n, x2origin)
    // 1. Xác định trục thời gian cho từng tín hiệu
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    
    // 2. Xác định trục thời gian chung cho tín hiệu tổng y(n)
    n_min = min(min(n1), min(n2));
    n_max = max(max(n1), max(n2));
    ny = n_min:n_max;
    
    // 3. Đệm 0 để đưa 2 tín hiệu về cùng kích thước trên trục ny
    x1_padded = zeros(1, length(ny));
    x2_padded = zeros(1, length(ny));
    
    idx1 = (min(n1) - n_min + 1) : (max(n1) - n_min + 1);
    idx2 = (min(n2) - n_min + 1) : (max(n2) - n_min + 1);
    
    x1_padded(idx1) = x1n;
    x2_padded(idx2) = x2n;
    
    // 4. Cộng từng mẫu
    yn = x1_padded + x2_padded;
    yorigin = 1 - n_min;
    
    // 5. Vẽ đồ thị trên cùng trục hoành ny để đồng bộ như hình bạn của bạn
    clf();
    
    // --- Subplot 1: Signal x_1(n) ---
    subplot(3, 1, 1);
    plot2d3(ny, x1_padded);
    e1 = gce();
    e1.children(1).foreground = color('blue');
    e1.children(1).thickness = 3;
    a1 = gca();
    a1.data_bounds = [n_min, -2.5; n_max, 3.5]; // Khóa trục y để không bị xén nét
    xgrid(33);
    title('Signal x_1(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Subplot 2: Signal x_2(n) ---
    subplot(3, 1, 2);
    plot2d3(ny, x2_padded);
    e2 = gce();
    e2.children(1).foreground = color('red');
    e2.children(1).thickness = 3;
    a2 = gca();
    a2.data_bounds = [n_min, -0.5; n_max, 3.5]; // Đảm bảo mức 0 và 1 hiện rõ ràng
    xgrid(33);
    title('Signal x_2(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Subplot 3: Signal y(n) ---
    subplot(3, 1, 3);
    plot2d3(ny, yn);
    e3 = gce();
    e3.children(1).foreground = color('darkgreen');
    e3.children(1).thickness = 3;
    a3 = gca();
    a3.data_bounds = [n_min, -2.5; n_max, 6.5];
    xgrid(33);
    title('Signal y(n) = x_1(n) + x_2(n)');
    xlabel('n');
    ylabel('Amplitude');
endfunction
// ==========================================
// ĐOẠN GỌI HÀM VÀ THỰC THI (Ví dụ bài 4)
// ==========================================
x1n = [0, 1, 3, -2];
x1origin = 1;

x2n = [1, 1, 2, 3];
x2origin = 2;

[yn, yorigin] = add_signal(x1n, x1origin, x2n, x2origin);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
