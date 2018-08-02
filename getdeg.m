function [d] = getdeg(I , II)
I2 = im2single(I);
II2 = im2single(II);


I3 = I2(:);
II3 = II2(:);

nI = norm(I3);
nII = norm(II3);

E = dot(I3, II3);

d = acos(E / (nI * nII));

end

