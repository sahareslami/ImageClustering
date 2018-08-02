function [matrix] = getmid(matrix , a , b , par , cnt)
if(a > b)
    tmp = b;
    b = a;
    a = tmp;
end
for i = 1 : 400
  
    matrix(a , i) = (matrix(a , i) * cnt(par(a))  + matrix(b , i) * cnt(par(b)) )/ (cnt(par(a)) + cnt(par(b)));
    matrix(i , a) = (matrix(a , i) * cnt(par(a))  + matrix(b , i) * cnt(par(b)) )/ (cnt(par(a)) + cnt(par(b)));
    matrix(b , i) = 1000;
    matrix(i , b) = 1000;
end 
end

