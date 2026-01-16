function [R] = init_R(y,n)
% this function computes the first values of the matrix R(t) using the
% function phi(). y in this case is the vector of output containing the
% first N0 samples
     t = length(y)-n;                            
     S = zeros(n,n);
     for i=1:t
         phi_vector = phi_k(y,n,i);                   
         S = S + phi_vector*phi_vector';
     end
     R= (1/t)*S;
 end