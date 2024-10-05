% histogram
% stem histogram after function call.
function histogram = histo(image)
    histogram = zeros(1,256);
    [x,y,z] = size(image);
    if(z==3)
        image = graypic(image); % user defined function so no problem;
    end
    
    for i = 1:x
        for j = 1:y
            histogram(image(i,j)+1) = histogram(image(i,j)+1)+1;
        end
    end
end
