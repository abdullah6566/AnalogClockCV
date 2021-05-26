function y = isUpar(x)

if(  (( (abs(x(1,1)-500)) <100 )&&( ( abs(x(1,2)-500) ) <100 ))  && x(1,2) > 500 )
        y = true; 
elseif((( (abs(x(2,1)-500)) <100 )&&( ( abs(x(2,2)-500) ) <100 )) && x(2,2) > 500)
        y = true; 
else
    y = false;
end
end