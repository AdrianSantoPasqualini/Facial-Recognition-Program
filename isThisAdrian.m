function isThisAdrian(image)

[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda] = setParameters();

theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

x = [1; imageToFeatureVector(image, "/Test-Set", false)];

hx = 1./(1 + exp(-theta'*x));

if hx >= predictionThreshold
    disp("This is Adrian");
    disp(["There is a ", mat2str(round(hx*100)), "% chance that this is Adrian"]);
end
                 
if hx < predictionThreshold
    disp("This is Not Adrian");
    disp(["There is only a ", mat2str(round(hx*100)), "% chance that this is Adrian"]);
end
        
end



