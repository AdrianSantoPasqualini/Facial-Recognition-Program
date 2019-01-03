function featureMatrix = createFeatureMatrix(folder, dimension)

mainDirectory = pwd;
featureMatrix = [];

#Enter picture directory, extract pictures, return to main program directory
cd ([mainDirectory "/" folder])
files = glob("*[.jpg.png]");
cd (mainDirectory)

#Call imageToFeatureVector to scale and unroll each image into featureMatrix
for i = [1:1:length(files)]
    file = char(files(i));
    featureMatrix = [featureMatrix imageToFeatureVector(file, folder, false, dimension)];
end;

#Add Layer of 1s to featureMatrix
featureMatrix = [ones(1, length(featureMatrix(1,:))) ; featureMatrix];

end;



