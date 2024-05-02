% log transform
% imshow l after function call.
function l = logt(im,c)
    im = double(im)/255; %alternative to im2double.
    l = c*log(1+im);
end
% im = any image;
% c = constant;
% l = log transformed image;