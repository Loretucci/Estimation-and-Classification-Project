function [J]= cost_function_J(y, theta)

% function to compute the cost function J(theta)

     n = length(theta);
     N = length(y)-n;
     H = -AR_Hankel(y,n);
     J = (1/N)*(y(n+1:end)-H*theta)'*(y(n+1:end)-H*theta);
end