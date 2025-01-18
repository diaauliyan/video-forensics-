Img='C:\Users\user\Desktop\manal alazmi\matlab\forged_ufo.avi';
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
