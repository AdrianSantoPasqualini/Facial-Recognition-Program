function CostVsLambda(start, skip, stop)

setenv("GNUTERM","qt");
[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda d Xcv ycv numCV] = setParameters();


costsTrain = [];
costsTest = [];
costsCV = [];
lambdas = [];

for i = [start:skip:stop]
lambda = i;
theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);
costsTrain = [costsTrain costAtTheta(theta, X, y)];
costsTest = [costsTest costAtTheta(theta, Xtest, ytest)];
costsCV = [costsCV costAtTheta(theta, Xcv, ycv)];
lambdas = [lambdas i];

end



clf;
plot(lambdas, costsTrain, "color", "r");

hold on;
plot(lambdas, costsTest, "color", "b");

hold on;
plot(lambdas, costsCV, "color", "g");

legend("Training Set Cost", "Test Set Cost", "Cross Validation Set", "location", "southeast");
title("Training Set Test Set, and Cross Validation Set Cost VS Lambda (Regularization Term)")
xlabel("Lambda");
ylabel("Cost");
hold off;

end







