function J = costAtTheta(theta, X, y)

m = size(X,2);
n = size(X,1);

J = 0;

hx = 1./(1 + exp(-theta'*X));
J = (log(hx)*y' + log(1-hx)*(1-y)')/(-m);
                 
end



