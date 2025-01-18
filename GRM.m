fontSize = 15;
% Read in a standard MATLAB gray scale demo image.

grayImage = diff*9;% change it to diff diaa
% Get the dimensions of the image.  numberOfColorBands should be = 1.
[rows, columns, numberOfColorBands] = size(grayImage);
% Display the original gray scale image.
subplot(2, 2, 1);
imshow(grayImage, []);
title('MFR Image', 'FontSize', fontSize);
% Enlarge figure to full screen.
set(gcf, 'Position', get(0,'Screensize')); 
set(gcf,'name','Image Analysis Demo','numbertitle','off') 

uiwait(msgbox('Click a point'));
[x, y] = ginput(1);
row = max([int32(y) 1]);
column = max([int32(x) 1]);
% Get the gray level of the point they clicked on.
grayLevel = grayImage(row, column);
tolerance = 70;

% Construct abinary image within the gray level tolerance 
% of where they clicked.
lowGL = grayLevel - tolerance;
highGL = grayLevel + tolerance;
binaryImage = grayImage >= lowGL & grayImage <= highGL;
% Get a marker image to reconstruct just the connected region
% and not all the other disconnected regions.
binaryMarkerImage = false(rows, columns);
binaryMarkerImage(row, column) = true;

outputImage = imreconstruct(binaryMarkerImage, binaryImage);
subplot(2, 2, 2);
imshow(outputImage, []);
title('GRM Image', 'FontSize', fontSize);

% Get the masked image - the original image in the region.
maskedImage = zeros(rows, columns, 'uint8');
maskedImage(outputImage) = grayImage(outputImage);
