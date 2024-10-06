close all;

image = imread("im_1.tif");
figure
imshow(image)

figure
smooth_image = smoothing_mean(image);
imshow(smooth_image)

figure
smooth_image = smoothing_weighted(image);
imshow(smooth_image)

figure
smooth_image = smoothing_max(image);
imshow(smooth_image)

figure
smooth_image = smoothing_median(image);
imshow(smooth_image)

figure
sharp_image = sharpening(image);
imshow(sharp_image)


'code succesfully executed'