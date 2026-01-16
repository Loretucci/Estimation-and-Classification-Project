function [Aic] = AIC_function(y,theta)
% it computes the Akaike Information Criterion and takes as input the
% vector y that will be the validation set and the theta
     p = length(theta);
     N = length(y)-p;
     J = cost_function_J(y,theta);
     Aic = N*log(J) + 2*p;                           
end