function accuracyCVSet()



[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda dimension Xcv ycv numCV] = setParameters();



theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);


hx = 1./(1 + exp(-theta'*Xcv));

amountIncorrect = 0;
for i = [1:1:size(hx,2)]
#disp([mat2str(round(100*hx(i))) "%"]);
    if and(ycv(i) == 1, hx(i) < predictionThreshold)
        
        amountIncorrect += 1;
    end
    if and(ycv(i) == 0 & hx(i) >= predictionThreshold)
        amountIncorrect += 1;
    end
                 
end
        
disp(["The Program Predicted " mat2str(amountIncorrect) " out of " mat2str(numCV) " Pictures in the Cross-Validation Set Incorrectly"]);
disp(["The Program has " mat2str(round((numCV - amountIncorrect)/numCV*100)) "% Accuracy"])
                 
end



