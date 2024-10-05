% reconstruction from bitplane slicing
% imshow im after function call.
function reconstructed_image = invbps(bitplane_slices)
    [x,y,z,bit] = size(bitplane_slices);
    reconstructed_image = zeros(x,y,z);

    p = 1; % p = just a container for storing corresponding powers of 2;
    for i = 1:bit
        reconstructed_image = reconstructed_image + bitplane_slices(:,:,:,i)*p;
        p = p*2;
    end

    reconstructed_image = uint8(reconstructed_image);
end
