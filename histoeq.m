% histogram equalisation
% display original histogram before function call.
function histoeq(im)
    [x,y,z] = size(im);
    if(z==3)
        im = graypic(im); % user defined function so no problem;
    end
    hg = histo(im); % user defined function so no problem;
    cdf = csum(hg)/(x*y);
    eqim = zeros(x,y);
    for i = 1:x
        for j = 1:y
            eqim(i,j) = round(255*cdf(im(i,j)+1));
        end
    end
    eqim = uint8(eqim);
    eqhg = histo(eqim); % user defined function so no problem;
    figure
    imshow(eqim)
    title('equalised image')
    
    figure
    stem(0:255,eqhg)
    title('equalised histogram')
end 
% im = any image;
% hg = histogram;
% cdf = cumilative distribution function;
% eqim = equalised image;
% eqhg = equalised histogram;
