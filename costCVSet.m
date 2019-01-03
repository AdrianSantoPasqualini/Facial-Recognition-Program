function JTotal = costCVSet()

[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda dimension Xcv ycv numCV] = setParameters();


theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

hx = 1./(1 + exp(-theta'*Xcv));
JTotal = (log(hx)*ycv' + log(1-hx)*(1-ycv)')/(-numCV);
                 
end



