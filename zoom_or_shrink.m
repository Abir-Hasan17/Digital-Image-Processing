% imshow new_image after function call.
function new_image = zoom_or_shrink(image,factor)
    [x,y,z] = size(image); %dimensions
    new_x = ceil(x*factor); 
    new_y = ceil(y*factor);
    new_image = zeros(new_x,new_y,z);
    for i = 1:new_x
        for j = 1:new_y
            for k = 1:z
                new_image(i,j,k) = image(ceil(i*x/new_x),ceil(j*y/new_y),k);
            end
        end
    end
    new_image = uint8(new_image); %imshow will not display image if it's not in uint8 format.
end

%image = any image
%factor = zooming factor. fractional value for shrinking. 