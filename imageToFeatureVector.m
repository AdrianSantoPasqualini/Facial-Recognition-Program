function featureVector = imageToFeatureVector(imageName, folder, wantToSee)

#Enter Picture Directory
cd (["/Users/adrianpasqualini/Documents/octave/ImageProcessing" folder])

#Set picture size to dimension x dimension
dimension = 50;

#Checks if imageName is in the folder. Raises Error otherwise.
if isempty(glob(imageName)) == 1
cd "/Users/adrianpasqualini/Documents/octave/ImageProcessing"
error("Could Not Find That File: Please Check the Image Name\n")
end

#Create scaled gray image
imageColour = imread(imageName);
#Resize Image using Octave Forge Image Package
cd "/Users/adrianpasqualini/Documents/octave/ImageProcessing/ImagePackage"
imageColour = imresize(imageColour, [dimension, dimension]);
cd "/Users/adrianpasqualini/Documents/octave/ImageProcessing"
[imageIndex cmap] = rgb2ind(imageColour);
imageGray = ind2gray(imageIndex, cmap);

#Unroll into Feature Vector
featureVector = double(imageGray(:)/1000);

#Display the image if wantToSee is true
if wantToSee
setenv("GNUTERM", "qt");
imshow(imageGray);
end

#### Useful Info To Test
#size(imageGray);
#imageGray;
#size(featureVector);

end



