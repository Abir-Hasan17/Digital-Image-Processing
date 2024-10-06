%gray image to monochrome image
function monochrome_image = monopic(gray_image)
    [x,y] = size(gray_image);
    monochrome_image = zeros(x,y);
    for i = 1:x
        for j = 1:y
            if(gray_image(i,j)>128)
                monochrome_image(i,j) = 1;
            else
                monochrome_image(i,j) = 0;
            end
        end
    end
end
