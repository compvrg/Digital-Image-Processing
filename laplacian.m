function [ g ] = laplacian( f )
%LAPLACIAN Uses the second derivative for image sharpening
%   g = laplacian( f ) uses the second derivative for image sharpening. f is a 
%   matrix containing the pixel information of an image. g is the sharpened image 
%   matrix.


f=im2double(f);
g=f;

dim=3;
coef=-1;
w=zeros(dim,dim);
[rw,cw]=size(w);
[rf,cf,kf]=size(f);

w(1,2)=1;
w(2,1)=1;
w(2,2)=-4;
w(2,3)=1;
w(3,2)=1;

% sum=0;
% for i=1:rw
%     for j=1:cw
%         sum=sum+w(i,j);
%     end
% end
% w=w./sum;


for k=1:kf
   for i=1:rf
       for j=1:cf
           if i-floor(dim/2)>0 && i+floor(dim/2)<=rf && j-floor(dim/2)>0 && j+floor(dim/2)<=cf
               for iw=1:rw
                   for jw=1:cw
%                        fprintf('h\n');
                       g(i,j,k)=g(i,j,k)+coef*w(iw,jw)*f(i-floor(dim/2)-1+iw,j-floor(dim/2)-1+jw,k);
                   end
               end
           end
       end
   end
end



end



