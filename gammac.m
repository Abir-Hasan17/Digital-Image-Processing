% gamma correction
% imshow g after function call.
function g = gammac(im,gama,c)
    im = double(im)/255; %alternative to im2double.
    g = c*im.^gama;
end
% im = any image;
% gamma = gamma;
% c = constant;
% g = gamma corrected image;