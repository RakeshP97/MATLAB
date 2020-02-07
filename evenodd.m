

function v = evenodd(n,e)
r = randi([0 30],1,n);
l=length(r);
disp(r);
if e==1
    r1 = r(1:2:l);
    Index_1 = rem(r1,2)==1;
    v=r1(Index_1);
else
    r1= r(2:2:l);
    Index_2 = rem(r1,2)==0;
    v=r1(Index_2);
end
end
