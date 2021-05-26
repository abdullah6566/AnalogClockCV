function y = isNeedle(x)

if(   (( (abs(x(1,1)-500)) <100 )&&( ( abs(x(1,2)-500) ) <100 )) || (( (abs(x(2,1)-500)) <100 )&&( ( abs(x(2,2)-500) ) <100 ))   )
 y = true; 
else 
 y = false;
end
    

end