function [H] = AR_Hankel(y,p)
% the function AR_Hankel is used to build the Hankel matrix. y is the
% general signal of which I'm computing the Hankel matrix and p is the
% model complexity
     N = length(y)-p;
     H = zeros(N,p);
 
     for i=1:N
         for j=1:p
             H(i,j)=y(i-j+p); % here I'm fulfilling the empty matrix previously created with the correct values of y                                 
         end
     end
 end