function JTotal = costTestSet()

[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda] = setParameters();

theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

hx = 1./(1 + exp(-theta'*Xtest));
JTotal = (log(hx)*ytest' + log(1-hx)*(1-ytest)')/(-numTests);
                 
end



