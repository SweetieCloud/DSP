function [yn, yorigin] = fold(xn, xorigin)
    // 1. Đảo ngược thứ tự các phần tử trong vector tín hiệu
    yn = xn($:-1:1);
    
    // 2. Xác định vị trí gốc mới của tín hiệu sau khi đảo
    yorigin = length(xn) - xorigin + 1;
    
    // 3. Tạo trục thời gian n cho cả 2 tín hiệu
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    
    // 4. Vẽ đồ thị trên cùng một figure
    clf();
    
    // --- Đồ thị tín hiệu gốc x(n) ---
    subplot(2, 1, 1);
    plot2d3(nx, xn);
    // Chỉnh màu đỏ, thanh xung dày, không chấm tròn
    e1 = gce();
    e1.children(1).foreground = color('red');
    e1.children(1).thickness = 3;
    // Bật lưới màu xanh nhạt
    xgrid(33);
    title('Discrete-time signal x(n)');
    xlabel('n');
    ylabel('Amplitude');
    
    // --- Đồ thị tín hiệu đảo y(n) = x(-n) ---
    subplot(2, 1, 2);
    plot2d3(ny, yn);
    // Chỉnh màu xanh dương, thanh xung dày, không chấm tròn
    e2 = gce();
    e2.children(1).foreground = color('blue');
    e2.children(1).thickness = 3;
    // Bật lưới màu xanh nhạt
    xgrid(33);
    title('Folded Signal y(n) = x(-n)');
    xlabel('n');
    ylabel('Amplitude');
endfunction

// ==========================================
// ĐOẠN GỌI HÀM VÀ THỰC THI (Ví dụ đề bài)
// ==========================================
xn = [1, -2, 3, 6];
xorigin = 3;

[yn, yorigin] = fold(xn, xorigin);


disp("yn = ");
disp(yn);
disp("yorigin = ");
disp(yorigin);
