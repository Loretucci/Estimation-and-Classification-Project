function Sf = Softmax_C(U, theta, i)
% it computes the Softmax function that is then used in the classifier
    phi = [ones(size(U,1),1), U];                        
    z = phi * theta;                     
    s = exp(z) / sum(exp(z));             
    Sf = s(i);                             
end