function y = NeedleAngel(x)

slope= ( ( x(2,2) - x(1,2) )/( x(2,1) - x(1,1) ) );
angle = atand(slope); 

if(angle == 90 || angle == -90)
 if(isUpar(x))
     y = 0;
 else
     y = 180;
 end
 
elseif(angle == 0)
    if(isAtLeft(x))
        y = 270;
    else
        y= 90;
    end
    
elseif (angle > 0)
    if(isAtLeft(x))
        y = 270 + angle;
    else
        y=  90 + angle;
    end
elseif (angle < 0)
    if(isAtLeft(x))
      y = 270 + angle;
    else
        y= 90 + angle;
    end
 
end


end