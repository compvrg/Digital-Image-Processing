function [ g ] = masking( f,blur,k )
%MASKING Uses unsharp masking for image sharpening
%   g = masking( f,blur,k ) uses unsharp masking for image sharpening.
%   f is a matrix containing the pixel information of an image.
%   blur is a parameter for the function spatial.
%   k is the weight of the mask.
%   g is the sharpened image matrix.
%   This function requires spatial.m.

f=im2double(f);

fb=spatial(f,blur);

g=f+k*fb;
figure;
imshow(f);
figure;
imshow(g);

end





