

function reverse= flipvector(v)
s= size(v);
if s(1)==1 && s(2) ==1
    reverse =v;
    return;
end
if s(1) == 1 || s(2) == 1
    if s(1) == 1 
        reverse = fliplr(v);
    else
        reverse = flipud(v);
    end
else
    reverse = v;
end
end