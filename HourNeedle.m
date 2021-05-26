function y = HourNeedle(x)
a = LineLen(x(:,:,1));
b =  LineLen(x(:,:,2));
if( a < b)
y = 1;
else 
y = 2;
end