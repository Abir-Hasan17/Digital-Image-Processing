%user defined function for cumsum
function c = csum(hg)
    s = 0;
    c = zeros(1,256);
    for i = 1:256
        s = s + hg(i);
        c(i) = s;
    end
end
% c = cumilative sum;
% hg = histogram;
% s = just a container;