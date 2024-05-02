% rgb to graylevel
% imshow g after function call.
function g = graypic(cim)
    g = .3*cim(:,:,1) + .6*cim(:,:,2) + .1*cim(:,:,3);
end

% cim = color image;
% g = gray image;