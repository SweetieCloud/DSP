function [yn, yorigin] = delay(xn, xorigin, k)
    // 1. Phép trễ giữ nguyên chuỗi giá trị biên độ
    yn = xn;
    
    // 2. Tính lại vị trí gốc tọa độ n = 0 trong chuỗi
    yorigin = xorigin - k;
    
    // 3. Tạo trục thời gian n cho cả 2 tín hiệu
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    // 4. Vẽ đồ thị
    clf();
    
    // --- Đồ thị tín hiệu gốc x(n) ---
    subplot(2, 1, 1);
    plot2d3(nx, xn);
    // Chỉnh màu đỏ và nét vẽ đậm cho thanh xung
    e1 = gce();
    e1.children(1).foreground = color('red');
    e1.children(1).thickness = 3;
    // Bật ô lưới màu xanh nhạt (cyan)
    xgrid(33);
    title('Discrete-time signal x(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Đồ thị tín hiệu trễ y(n) = x(n - k) ---
    subplot(2, 1, 2);
    plot2d3(ny, yn);
    // Chỉnh màu xanh dương và nét vẽ đậm cho thanh xung
    e2 = gce();
    e2.children(1).foreground = color('blue');
    e2.children(1).thickness = 3;
    // Bật ô lưới màu xanh nhạt (cyan)
    xgrid(33);
    title(msprintf('Delayed Signal y(n) = x(n - %d)', k));
    xlabel('n');
    ylabel('Amplitude');
endfunction

// ==========================================
// ĐOẠN GỌI HÀM VÀ THỰC THI (Ví dụ bài 1)
// ==========================================
xn = [1, -2, 3, 6];
xorigin = 3;
k = 1;

[yn, yorigin] = delay(xn, xorigin, k);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
