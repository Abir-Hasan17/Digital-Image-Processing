close all;

im = imread("im_2.tif");

figure
imshow(im)

s = bps(im,8); % always pass 8 as number of bits
rim = invbps(s);

figure
imshow(rim)


'code succesfully executed'