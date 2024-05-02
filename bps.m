%bit plane slicing.
%pass s in invbps for reconstruction after function call.
function s = bps(im,bit)
    [x,y,z] = size(im);
    s = zeros(x,y,z,bit);
    im = double(im);
    for i = 1:bit
        b = modulo(im,2);
        s(:,:,:,i) = b;
        im = floor(im/2);

        figure
        imshow( s(:,:,:,i))
    end
end

% s = slices of the bit plane slicing.
% im = any image.
% bit = number of slices.