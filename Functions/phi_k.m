 function [phi] = phi_k(y,p,t)
 % function used to compute the vector phi(t)
 % y is the output vector and p is the model complexity
     phi = -y(t-1+p:-1:t);                      
 end