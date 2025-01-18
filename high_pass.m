% Filter 1
kernel1 = -1 * ones(3)/9;
kernel1(2,2) = 7/8
% Filter the image.  Need to cast to single so it can be floating point
% which allows the image to have negative values.
filteredImage = imfilter(single(diff), kernel1);
% Display the image.
imshow(filteredImage, [0 100]);
title('Filtered Image', 'FontSize', fontSize);
% Filter 2
kernel2 = [-1 -2 -1; -2 12 -2; -1 -2 -1]/16;
% Filter the image.  Need to cast to single so it can be floating point
% which allows the image to have negative values.
filteredImage = imfilter(single(grayImage), kernel2);
% Display the image.
imshow(filteredImage, []);
title('Filtered Image', 'FontSize', fontSize);
