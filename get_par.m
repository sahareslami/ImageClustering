function [ P ] = get_par( a, par )

if (par(a) == a) 
    P = a;
else
    P = get_par(par(a), par);
end

end

