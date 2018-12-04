function CostVsLambda(start, skip, stop)

setenv("GNUTERM","qt");
[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda] = setParameters();

costsTrain = [];
costsTest = [];
lambdas = [];

for i = [start:skip:stop]
lambda = i;
theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);
costsTrain = [costsTrain costAtTheta(theta, X, y)];
costsTest = [costsTest costAtTheta(theta, Xtest, ytest)];
lambdas = [lambdas i];

end
#costsTrain
#costsTest



clf;
plot(lambdas, costsTrain, "color", "r");

hold on;
plot(lambdas, costsTest);

legend("Training Set Cost", "Test Set Cost", "location", "southeast");
title("Training Set and Test Set Cost VS Lambda (Reg Term)")
xlabel("Lambda");
ylabel("Cost");
hold off;

end



