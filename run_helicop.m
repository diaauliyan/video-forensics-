Img='C:\Users\user\Desktop\manal alazmi\matlab\forged_helicop.avi';
vidObj = VideoReader(Img);
numFrames = 0;
k = 1;
while hasFrame(vidObj)
    F = readFrame(vidObj);
     mov(k).cdata = readFrame(vidObj);
     imshow(mov(k).cdata)
    numFrames = numFrames + 1;  
    k = k+1;
    imagesc(F)
    drawnow
end
numFrames

output=AdaptiveFilter(rgb2gray(mov(130).cdata),5);
image=rgb2gray(mov(130).cdata);
J = uint8(filter2(fspecial('gaussian'), output));
diff = imabsdiff(output,image);
diff = imabsdiff(J,image);
imshow(diff,[0 70]);
high_pass;
imshow(filteredImage, [0 6]);
GRM;
contour(filteredImage)


