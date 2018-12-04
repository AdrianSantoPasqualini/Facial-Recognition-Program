function [predictionThreshold Xtest ytest m X y initialTheta learningRate maxIterations lambda] = setParameters()

predictionThreshold = 0.5;

Xtest = createFeatureMatrix("/Test-Set");
ytest = [ones(1,13) zeros(1,9)];
m = size(Xtest,2);

X = createFeatureMatrix("/Training-Set");
y = [ones(1,33) zeros(1,40)];
initialTheta = zeros(size(X,1),1);
learningRate = 0.000001;
maxIterations = 600;
lambda = 0;

end



