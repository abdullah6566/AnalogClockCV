
I = imread('6.jpg');
I = imresize(I,[1000 1000]);
I = rgb2gray(I);
darkValue = 180; 
I = imextendedmax(I, darkValue); 
BW = edge(I, 'canny');
[H,T,R] = hough(BW);
imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
P  = houghpeaks(H,5,'threshold',ceil(0.0000000001*max(H(:))));
x = T(P(:,2)); y = R(P(:,1));
plot(x,y,'s','color','white');
lines = houghlines(BW,T,R,P,'FillGap',20,'MinLength',100);
figure, imshow(BW), hold on
max_len = 0;
needles =1;
xyz(2,2,2) = 0;
for k = 1:length(lines)
     xy = [lines(k).point1; lines(k).point2];
  if(isNeedle(xy))
     
    xyz(:,:, needles) = xy;
    needles = needles +1;
    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','blue');
    % Plot beginnings and ends of lines
    plot(xy(1,1),xy(1,2),'x','LineWidth',1,'Color','yellow');
    plot(xy(2,1),xy(2,2),'x','LineWidth',1,'Color','red');

    % Determine the endpoints of the longest line segment
    len = norm(lines(k).point1 - lines(k).point2);
    if ( len > max_len)
       max_len = len;
       xy_long = xy;
    end
  end
end
if(needles == 1)
aaGhanta = hours( NeedleAngel(xyz(:,:,1)));
aamint = minutes( NeedleAngel(xyz(:,:,1)));
else
aaGhanta = hours( NeedleAngel(xyz(:,:, (HourNeedle(xyz)))) );
aamint = minutes( NeedleAngel(xyz(:,:, MinuteNeedle(xyz))) );
end



