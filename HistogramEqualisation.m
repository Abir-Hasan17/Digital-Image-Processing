close all;

im = imread("im_3.tif");

hg = histo(im);
figure
imshow(im)
figure
stem(0:255,h)

histoeq(im);


'code succesfully executed'