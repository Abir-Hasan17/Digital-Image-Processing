%bit plane slicing.
%pass bitplane_slices in invbps for reconstruction after function call.
function bitplane_slices = bps(image)
    bit = 8;
    [x,y,z] = size(image);
    bitplane_slices = zeros(x,y,z,bit);
    image = double(image);

    for i = 1:bit
        bitplane_slices(:,:,:,i) =  modulo(image,2); %modulo is user defined
        image = floor(image/2);

        figure
        imshow( bitplane_slices(:,:,:,i))
        title(['slice no. ' num2str(i)])
    end
end

% bit = number of slices.