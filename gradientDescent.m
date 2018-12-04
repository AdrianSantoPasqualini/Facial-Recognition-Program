function [theta] = gradientDescent(X, y, theta0, learningRate, numIters, lambda)

# Reccomended Learning Rate of about 0.000001
m = size(X,2);
n = size(X,1);
theta = theta0;

for i = [1:1:numIters]
#costAtTheta(theta, X, y)
hx = 1./(1 + exp(-theta'*X));
gradients = (X*(hx-y)')*(learningRate/m);
             
regTerm = (lambda/m)*theta;
regTerm(1) = 0;
gradients = gradients + regTerm;
             
theta = theta - gradients;
end

end



