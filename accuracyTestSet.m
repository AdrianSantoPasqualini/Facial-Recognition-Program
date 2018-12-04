function accuracyTestSet()



[predictionThreshold Xtest ytest numTests X y initialTheta learningRate maxIterations lambda] = setParameters();



theta = gradientDescent(X,y, initialTheta, learningRate, maxIterations, lambda);

hx = 1./(1 + exp(-theta'*Xtest));

amountIncorrect = 0;
for i = [1:1:size(hx,2)]
#disp([mat2str(round(100*hx(i))) "%"]);
    if and(ytest(i) == 1, hx(i) < predictionThreshold)
        amountIncorrect += 1;
    end
    if and(ytest(i) == 0 & hx(i) >= predictionThreshold)
        amountIncorrect += 1;
    end
                 
end
        
disp(["The Program Predicted " mat2str(amountIncorrect) " out of " mat2str(numTests) " Pictures in the Test-Set Incorrectly"]);
disp(["The Program has " mat2str(round((numTests - amountIncorrect)/numTests*100)) "% Accuracy"])
                 
end



