function [theta]=AR_LS(y,p)
% function needed to obtain the first estimate of theta using the LS
% y in this case is the vector of output containing the first N_batch samples
     N = length(y)-p;
     H = -AR_Hankel(y,p);                        % Hankel Matrix (with negative signs)
     theta = pinv((H')*H)*(H')*y(1+p:N+p);       % Batch Estimator
 end