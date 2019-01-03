function featureVector = imageToFeatureVector(imageName, folder, wantToSee, dimension)

mainDirectory = pwd;

#Enter Picture Directory
cd ([mainDirectory "/" folder])

#Checks if imageName is in the folder. Raises Error otherwise.
if isempty(glob(imageName)) == 1
cd (mainDirectory)
error("Could Not Find That File: Please Check the Image Name\n")
end

#Create scaled gray image
imageColour = imread(imageName);
#Resize Image using Octave Forge Image Package
imageColour = imresize(imageColour, [dimension, dimension]);
[imageIndex cmap] = rgb2ind(imageColour);
imageGray = ind2gray(imageIndex, cmap);

#Unroll into Feature Vector
featureVector = double(imageGray(:)/1000);

#Display the image if wantToSee is true
if wantToSee
setenv("GNUTERM", "qt");
imshow(imageGray);
end

cd (mainDirectory);

#### Useful Info To Test
#size(imageGray);
#imageGray;
#size(featureVector);

end



