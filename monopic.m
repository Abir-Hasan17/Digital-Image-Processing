%gray image to monocrome image
%imshow m after function call.
function m = monopic(gim)
    [x,y] = size(gim);
    m = zeroes(x,y);
    for i = 1:x
        for j = 1:y
            if(gim(i,j)>128)
                m(i,j) = 1;
            else
                m(i,j) = 0;
            end
        end
    end
    m = uint8(m);
end

% m = monochrome image;
% gim = gray image;