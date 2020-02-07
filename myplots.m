

function retval = myplots(fun, col, mark)
    if ( length(fun) ~= 4 || length(col) ~= 4 || length(mark) ~= 4)
        fprintf('Length of each input vector must be 4'); 
        retval = -1;
        return;
    end
    val = 2 * pi;
    x = -val:0.3:val;
    f1 = str2func(fun{1});
    subplot(length(fun)/2,2,1);
    p1 = plot(x, f1(x),'Color', col(1));
    grid on;
    title([fun{1},'(x)']);
    p1.Marker = mark(1);
    subplot(length(fun)/2,2,2);
    f2 = str2func(fun{2});
    p2 = plot(x, f2(x),'Color', col(2));
    p2.Marker = mark(2);
    title([fun{2},'(x)']);
    grid on;
    subplot(length(fun)/2,2,3);
    f3 = str2func(fun{3});
    p3 = plot(x, f3(x),'Color', col(3));
    p3.Marker = mark(3);
    title([fun{3},'(x)']);
    grid on;
    subplot(length(fun)/2,2,4);
    f4 = str2func(fun{4});
    p4 = plot(x, f4(x),'Color', col(4));
    p4.Marker = mark(4);
    title([fun{4},'(x)']);
    grid on;
    retval =1;
end