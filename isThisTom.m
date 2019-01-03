function isThisTom(image, folder)

[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda dimension Xcv ycv numCV] = setParameters();


theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

x = [1; imageToFeatureVector(image, folder, false, dimension)];

hx = 1./(1 + exp(-theta'*x));

if hx >= predictionThreshold
    disp("This is Tom Holland");
    disp(["There is a ", mat2str(round(hx*100)), "% chance that this is Tom Holland"]);
end
                 
if hx < predictionThreshold
    disp("This is Not Tom Holland");
    disp(["There is only a ", mat2str(round(hx*100)), "% chance that this is Tom Holland"]);
end
        
end



