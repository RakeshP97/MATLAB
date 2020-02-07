

function aera = calc_crown_area(r1,r2)
len_r1 = length(r1);
len_r2 = length(r2);
if len_r1 == len_r2     
    %aeras = zeros(1,len_r1);
        if all(r1<=r2)
           aeras = (r2.^2 - r1.^2).*pi;
        else
            fprintf("The two vectors provided as inputs in that one of the first veactor value greater than second vector \n");
            return;
        end
    aera = aeras;
else
    fprintf("The two vectors provided as inputs do not have the same lengtht \n");
end
end

