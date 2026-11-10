
close(winsid()); 

script_path = get_absolute_file_path('ex5.sci');
cd(script_path);

img_rgb = imread('logo_bk.png'); 

if size(img_rgb, 3) == 3 then
    img_gray = rgb2gray(img_rgb);
else
    img_gray = img_rgb;
end

// FIGURE 1: ẢNH GỐC XÁM VÀ BIỂU ĐỒ HISTOGRAM
figure(1);
clf();

subplot(1, 2, 1);
imshow(img_gray);
title('Ảnh gốc (Grayscale)');

subplot(1, 2, 2);
h_orig = imhist(img_gray);  
bar(h_orig);                
title('Biểu đồ Histogram của ảnh gốc');

// FIGURE 2: CÂN BẰNG HISTOGRAM VÀ HISTOGRAM SAU CÂN BẰNG
img_eq = imhistequal(img_gray);

figure(2);
clf();

subplot(1, 2, 1);
imshow(img_eq);
title('Ảnh sau khi cân bằng Histogram');

subplot(1, 2, 2);
h_eq = imhist(img_eq);  
bar(h_eq);              
title('Histogram sau khi cân bằng');

// FIGURE 3: LÀM MỜ ẢNH GỐC (GAUSSIAN BLUR)
h_gauss = fspecial('gaussian', 15, 4);
img_blur = imfilter(img_rgb, h_gauss);

figure(3);
clf();
imshow(img_blur);
title('Ảnh sau khi làm mờ (Gaussian Blur)');
