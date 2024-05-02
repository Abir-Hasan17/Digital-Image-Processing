%user defined function for mod
function m = modulo(im,d)
    m = im - floor(im/d)*d;
end
% m = modulo of the image;
% im = any image;
% d = denominator;