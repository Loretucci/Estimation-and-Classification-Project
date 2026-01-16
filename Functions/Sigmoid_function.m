function [f] = Sigmoid_function(U, theta)
     phi = [ones(size(U,1),1), U];                                
     z = phi*theta;                                   
     f = 1./(1+exp(-z));                                
end

