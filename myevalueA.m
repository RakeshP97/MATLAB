
function n = myevalueA(err)
e_inverse = (1/exp(1));
for i = 1:10000
    s = ((1-(1/i))^i);
    if (e_inverse - s) < err
        n = i;
        break;
    end
end