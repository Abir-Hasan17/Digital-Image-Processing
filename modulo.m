%user defined function for mod
function modulo_image = modulo(image,denominator)
    modulo_image = image - floor(image/denominator)*denominator;
end