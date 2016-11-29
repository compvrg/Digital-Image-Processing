README

Project Name
-------------------
MATH 8850 Digital Image Processing

Author
-------------------
unlimitedhello

File List
-------------------
spatial.m
Uses smoothing spatial filters to blur images

laplacian.m
Uses the second derivative for image sharpening

masking.m
Uses unsharp masking for image sharpening

Environment
-------------------
MATLAB R2016a or above

How to Use
-------------------
Enter command:
f = imread ( 'Your Image File' );
g = spatial( f, dim );
imshow( g );

f = imread ( 'Your Image File' );
g = laplacian( f );
imshow( g );

f = imread ( 'Your Image File' );
g = masking( f, blur, k );
imshow( g );

