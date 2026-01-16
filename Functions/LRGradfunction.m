function [ gradJ ] = LRGradfunction(Phi, Y,theta,u)
    
    F_theta = zeros(size(Phi,1),1);
    for i = 1:size(Phi,1)
        f = Sigmoid_function(u , theta);
        F_theta(i,1)= f(i,1);
    end
    gradJ = Phi'*((F_theta)- Y);
    

end
