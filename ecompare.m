
function test = ecompare(e_values)
no_evalues = length(e_values);
A_values = int16.empty(no_evalues,0);
B_values = int16.empty(no_evalues,0);
fprintf('%s\t%s\t%s\n', 'Error value', 'myevalueA', 'myevalueB');
for i = 1:no_evalues
    fprintf('%.6f\t%d\t%d\n',e_values(i), myevalueA(e_values(i)),myevalueB(e_values(i)));
    A_values(i) = myevalueA(e_values(i));
    B_values(i) = myevalueB(e_values(i));
end
test = 1;
hold on
p1=plot(A_values,e_values,'-r*');
p2=plot(B_values,e_values,'-b*');
xlabel("Number of iterations");
ylabel("error values");

grid on
hold off
legend([p1 p2],{'myevalueA iterations', 'myevalueB iterations'}); 
end