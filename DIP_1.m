close all;

image = imread("im_2.tif");

figure
imshow(image)

gray_image = graypic(image);
figure
imshow(gray_image)

mono_image = monopic(gray_image);
figure
imshow(mono_image)