
function n = myevalueB(error)
e_value = exp(1);
pred_e = 0;
for i = 0:10000
    pred_e = pred_e + (1/factorial(i));
    if (e_value - pred_e) < error
        n = i;
        break;
    end
end
end