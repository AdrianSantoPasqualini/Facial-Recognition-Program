function CostVsDimension(start, skip, stop)

setenv("GNUTERM","qt");
[predictionThreshold Xtest ytest numTests X_old y initialTheta learningRate maxIterations lambda d Xcv ycv numCV] = setParameters();

costsTrain = [];
costsTest = [];
costsCV = [];
numFeatures = [];

for i = [start:skip:stop]
dimension = i;
X = createFeatureMatrix("Training-Set", dimension);
Xtest = createFeatureMatrix("Test-Set", dimension);
Xcv = createFeatureMatrix("Cross-Validation-Set", dimension);
initialTheta = zeros(size(X,1),1);

theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

costsTrain = [costsTrain costAtTheta(theta, X, y)];
costsTest = [costsTest costAtTheta(theta, Xtest, ytest)];
costsCV = [costsCV costAtTheta(theta, Xcv, ycv)];

numFeatures = [numFeatures dimension];

end

clf;
plot(numFeatures, costsTrain, "color", "r");

hold on;
plot(numFeatures, costsTest, "color", "b");

hold on;
plot(numFeatures, costsCV, "color", "g");

legend("Training Set Cost", "Test Set Cost", "Cross Validation Set Cost", "location", "southeast");
title("Training Set, Test Set, and CV Set Cost VS Dimension")
xlabel("Dimension");
ylabel("Cost");
hold off;

end



