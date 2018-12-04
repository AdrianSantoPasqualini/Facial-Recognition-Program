function saveTheta()

[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda] = setParameters();

theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

save theta.mat theta;


end



