function [dis] = merge(dis, a, b, par, cnt )
if(a > b)
    tmp = b;
    b = a;
    a = tmp;
end
getmid(dis, a, b, par, cnt); 
par(get_par(a)) = get_par(b);
cnt(get_par(a)) = cnt(get_par(a)) + cnt(get_par(b));
end

