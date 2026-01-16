function [y] = ClassifSoftmax(U,theta)
% it implements the classifier  

    m = size(theta,2);
    probvector = zeros(1,m);
    for k = 1:m

        probvector(k) = Softmax_C(U, theta, k);   % it computes the probability for class k

    end
    
    [~, y] = max(probvector);                    % it choose the highest probability and it returns the index
end