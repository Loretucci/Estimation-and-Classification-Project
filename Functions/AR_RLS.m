function [theta]=AR_RLS(y,p,N_batch)
% function to implement the RLS II algorithm

     N = length(y)-p;                            
     y0 = y(1:N_batch+p);                        % First samples to do Batch Estimation on
     theta = AR_LS(y0,p);                        % Initialization of theta(N_batch)
     R = init_R(y0,p);                           % Initialization of R(N_batch)
 
     for t=N_batch+1:N                                % Recursive algorithm
         phi = phi_k(y,p,t);
         R = ((t-1)/t)*R+(1/t)*(phi*phi');      
         K = (1/t)*pinv(R)*phi;                 
         eps = y(t+p)-(phi')*theta;             
         theta = theta + K*eps;                 
     end
 end