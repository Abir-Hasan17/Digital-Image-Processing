% gamma correction
% imshow g after function call.
function gamma_corrected_image = gammac(image,gama,c)
    image = double(image)/255; %alternative to im2double.
    gamma_corrected_image = c*image.^gama;
end
% gamma = gamma;
% c = constant;