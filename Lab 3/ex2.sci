function [yn, yorigin] = advance(xn, xorigin, k)
    // 1. Phép dịch sớm giữ nguyên chuỗi giá trị biên độ
    yn = xn;
    
    // 2. Tính lại vị trí gốc tọa độ n = 0 trong chuỗi (dịch sang phải k đơn vị)
    yorigin = xorigin + k;
    
    // 3. Tạo trục thời gian n cho cả 2 tín hiệu
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    // 4. Vẽ đồ thị trên cùng một figure
    clf();
    
    // --- Đồ thị tín hiệu gốc x(n) ---
    subplot(2, 1, 1);
    plot2d3(nx, xn);
    // Chỉnh màu đỏ, thanh xung dày, không dấu chấm
    e1 = gce();
    e1.children(1).foreground = color('red');
    e1.children(1).thickness = 3;
    // Bật lưới màu xanh nhạt
    xgrid(33);
    title('Discrete-time signal x(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Đồ thị tín hiệu dịch sớm y(n) = x(n + k) ---
    subplot(2, 1, 2);
    plot2d3(ny, yn);
    // Chỉnh màu xanh dương, thanh xung dày, không dấu chấm
    e2 = gce();
    e2.children(1).foreground = color('blue');
    e2.children(1).thickness = 3;
    // Bật lưới màu xanh nhạt
    xgrid(33);
    title(msprintf('Advanced Signal y(n) = x(n + %d)', k));
    xlabel('n');
    ylabel('Amplitude');
endfunction

// ==========================================
// ĐOẠN GỌI HÀM VÀ THỰC THI (Ví dụ thử nghiệm)
// ==========================================
xn = [1, -2, 3, 6];
xorigin = 3; 
k = 1;        
[yn, yorigin] = advance(xn, xorigin, k);

disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
