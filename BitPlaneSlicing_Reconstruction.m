close all;

image = imread("im_2.tif");

figure
imshow(image)

bitplane_slices = bps(image); % always pass 8 as number of bits
reconstructed_image = invbps(bitplane_slices);

figure
imshow(reconstructed_image)


'code succesfully executed'