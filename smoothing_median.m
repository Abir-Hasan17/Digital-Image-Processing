function smoothed_image = smoothing_median(image)
    
    image = double(image);
    smoothed_image = image.*0;
    [x,y,z] = size(image);
      
    for i = 2:x-1
        for j = 2:y-1
            for k = 1:z
                temp = 0;
                for l = -1:1
                    for m = -1:1
                        temp(end+1) = image(i+l,j+m,k);
                    end
                end
                temp = sort(temp);
                smoothed_image(i,j,k) = temp(5);
            end
        end
    end
    a = "blah"
    smoothed_image = uint8(smoothed_image);
end