function [theta_estimate] = NewtRaphAlg(phi, U, step, stop,Y)
 % it computes the theta estimate by using the newton raphson algorithm
 % step is the step size, stop is a value used for the stopping criterion
    r = size(U,2);                                                          % number of features
    initial_theta = zeros(r+1,1);                                           
    k_max = 150;                                                            % number of maximum iterations
    CostGradFunction = LRGradfunction(phi,Y,initial_theta,U);             % computing the gradient of J
    CostHessFunction = Hessian_matrix(phi,initial_theta,U);               % computing the Hessian matrix
    theta_new_est = initial_theta;
    % for cicle for the newton raphson algorithm
    for k = 1:k_max
        
        theta_new_est = initial_theta -(step^k)*inv(phi'*CostHessFunction*phi)*CostGradFunction;
        if norm(theta_new_est-initial_theta) < stop
            break;
        end
        initial_theta = theta_new_est;

    end
    theta_estimate = theta_new_est;


end
    