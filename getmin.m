function [m] = getmin(matrix)
min = 1000;
r = 0;
c = 0;
m = zeros(1, 3);

for i=1 : 400
    for j = 1 : 400
        if matrix(i , j) < min
            m(1) = i;
            m(2) = j;
            m(3) = matrix(i , j);
        end
    end
end
end

