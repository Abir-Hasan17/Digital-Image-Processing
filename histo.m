% histogram
% stem h after function call.
function hg = histo(im)
    hg = zeros(1,256);
    [x,y,z] = size(im);
    if(z==3)
        im = graypic(im); % user defined function so no problem;
    end
    
    for i = 1:x
        for j = 1:y
            hg(im(i,j)+1) = hg(im(i,j)+1)+1;
        end
    end
end
% im = any image;
% hg = histogram;