% rgb to graylevel
% imshow g after function call.
function gray_image = graypic(color_image)
    gray_image = .3*color_image(:,:,1) + .6*color_image(:,:,2) + .1*color_image(:,:,3);
end
