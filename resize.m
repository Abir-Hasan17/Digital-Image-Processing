% zooming shrinking.
% imshow r after function call.
function r = resize(im,f)
    [x,y,z] = size(im);
    nx = ceil(x*f);
    ny = ceil(y*f);
    r = zeros(nx,ny,z);
    for i = 1:nx
        for j = 1:ny
            for k = 1:z
                r(i,j,k) = im(ceil(i*x/nx),ceil(j*y/ny),k);
            end
        end
    end
    r = uint8(r); %imshow will not display image if it's not in uint8 format.
end

%im = any image
%f = zooming factor. fractional value for shrinking.
%nx,ny = new x and y dimensions.
%r = resized image/returned image. 