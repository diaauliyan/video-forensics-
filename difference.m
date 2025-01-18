J = uint8(filter2(fspecial('gaussian'), output));
diff = imabsdiff(output,image);
diff = imabsdiff(J,image);
imshow(diff,[0 100]);