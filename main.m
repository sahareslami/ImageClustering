clc;    % Clear the command window.
clear;

images = getimages();
dis = matrix(images);
par = zeros(1, 400);
cnt = ones(1, 400);

for i = 1 : 400
    par(i) = i;
end

ted = 400;

mini = getmin(dis);


while ted >= 40
   mini = getmin(dis);
   if(mini(3) == 1000)
       break;
   end
   
   if(cnt(par(mini(1))) + cnt(par(mini(2))) > 10)
       dis(mini(1) , mini(2)) = 1000;
       dis(mini(2) , mini(1)) = 1000;
       continue;
   end
   
%    dis = merge(dis, mini(1) , mini(2), par, cnt);
   
   a = mini(1);
   b = mini(2);
   if(a > b)
        tmp = b;
        b = a;
        a = tmp;
   end
    dis = getmid(dis, a, b, par, cnt); 
    par(get_par(a, par), par) = get_par(b, par);
    cnt(get_par(a, par)) = cnt(get_par(a, par)) + cnt(get_par(b, par));
    ted = ted - 1;
   
end

   
    