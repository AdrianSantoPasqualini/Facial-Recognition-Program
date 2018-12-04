function featureMatrix = createFeatureMatrix(folder)

featureMatrix = [];

#Enter picture directory, extract pictures, return to main program directory
cd (["/Users/adrianpasqualini/Documents/octave/ImageProcessing" folder])
files = glob("*[.jpg.png]");
cd "/Users/adrianpasqualini/Documents/octave/ImageProcessing"

#Call imageToFeatureVector to scale and unroll each image into featureMatrix
for i = [1:1:length(files)]
    file = char(files(i));
    featureMatrix = [featureMatrix imageToFeatureVector(file, folder, false)];
end;

featureMatrix = [ones(1, length(featureMatrix(1,:))) ; featureMatrix];

end;



