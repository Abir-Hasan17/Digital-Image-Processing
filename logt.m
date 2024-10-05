% log transform
% imshow log_transformed_image after function call.
function log_transformed_image = logt(image,c)
    image = double(image)/255; %alternative to im2double.
    log_transformed_image = c*log(1+image);
end
% c = constant;
