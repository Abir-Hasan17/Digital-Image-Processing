close all;

image = imread("im_3.tif");

histogram = histo(image);
figure
imshow(image)
figure
stem(0:255,histogram)

histoeq(image);


'code succesfully executed'