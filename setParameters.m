function [predictionThreshold Xtest ytest m X y initialTheta learningRate maxIterations lambda dimension Xcv ycv numCV] = setParameters()

predictionThreshold = 0.5;
dimension = 100;


Xtest = createFeatureMatrix("Test-Set", dimension);
ytest = [zeros(1, 12) ones(1,8)];
m = size(Xtest,2);

Xcv = createFeatureMatrix("Cross-Validation-Set", dimension);
ycv = [zeros(1, 11) ones(1, 11)];
numCV = size(Xcv,2);


X = createFeatureMatrix("Training-Set", dimension);
y = [zeros(1,42) ones(1,31)];
initialTheta = zeros(size(X,1),1);
learningRate = 0.000001;
maxIterations = 200;
lambda = 0;

end
