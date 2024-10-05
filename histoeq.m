% histogram equalisation
% display original histogram before function call.
function histoeq(image)
    [x,y,z] = size(image);
    if(z==3)
        image = graypic(image); % user defined function so no problem;
    end
    histogram = histo(image); % user defined function so no problem;
    cdf = csum(histogram)/(x*y); % user defined function so no problem;
    % cdf = cumilative distribution function;

    equalised_image = zeros(x,y);
    for i = 1:x
        for j = 1:y
            equalised_image(i,j) = round(255*cdf(image(i,j)+1));
        end
    end
    equalised_image = uint8(equalised_image);
    equalised_histogram = histo(equalised_image); % user defined function so no problem;
    
    figure
    imshow(equalised_image)
    title('equalised image')
    
    figure
    stem(0:255,equalised_histogram)
    title('equalised histogram')
end 



