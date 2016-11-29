function [ g ] = spatial( f,dim )
%SPATIAL Uses smoothing spatial filters to blur images.
%   g = spatial( f,dim ) uses smoothing spatial filters to blur images.
%   f is a matrix containing the pixel information of an image.
%   dim is the dimension of the neighborhood every pixel is affected by.

f=im2double(f);
g=im2double(f);

w=rand(dim,dim);
[rw,cw]=size(w);
[rf,cf,kf]=size(f);

sum=0;
for i=1:rw
    for j=1:cw
        sum=sum+w(i,j);
    end
end
w=w./sum;


for k=1:kf
   for i=1:rf
       for j=1:cf
           temp=0;
           for iw=1:rw
               for jw=1:cw
                   if i+iw-1<=rf &j+jw-1<=cf
                       temp=temp+w(iw,jw)*f(i+iw-1,j+jw-1,k);
                   end
                   
               end
           end
           g(i,j,k)=temp;
           
           
           
       end
   end
end



end

