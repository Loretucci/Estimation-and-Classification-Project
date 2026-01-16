function [W] = Hessian_matrix(Phi,theta,u)
    
    
    w = zeros(1,size(Phi,1));
    for i = 1:size(Phi,1)
        f=Sigmoid_function(u, theta);
        z_i = f(i,1);
        w(1,i)= z_i * (1-z_i);
    end
    W = diag(w);
end