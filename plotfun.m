
function success = plotfun(v)
expresion = input('Enter the mathematical function: ', 's');
no_plots = ceil(length(v)/2);
for i = 1:length(v)
    x = 10.*rand(v(i),1);
    points = eval(str2sym(expresion));
    subplot(no_plots,2,i);
    plot(x,points,'r.');
    grid on;
    title(["number of points =",v(i)]);
end
success=1;
end