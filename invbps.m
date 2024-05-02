% reconstruction from bitplane slicing
% imshow im after function call.
function rim = invbps(s)
    [x,y,z,bit] = size(s);
    rim = zeros(x,y,z);
    p = 1;
    for i = 1:bit
        rim = rim + s(:,:,:,i)*p;
        p = p*2;
    end
    rim = uint8(rim);
end
% rim = reconstructed image;
% bit = number of bits;
% p = just a container for storing corresponding powers of 2;