%user defined function for cumsum
function cumilitive_sum = csum(histogram)
    s = 0;
    cumilitive_sum = zeros(1,256);
    for i = 1:256
        s = s + histogram(i);
        cumilitive_sum(i) = s;
    end
end
% s = just a container;