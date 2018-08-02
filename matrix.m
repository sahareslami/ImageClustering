function [dis] = matrix(images)
dis = zeros(400 , 400);
for i = 1 : 400
    for j=1 : 400
        if i ~= j
            dis(i , j) = getdeg(images{i} , images{j});
        else
            dis(i, j) = 1000;
        end
    end
end
end

