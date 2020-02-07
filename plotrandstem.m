
function retval = plotrandstem(fileName, n)
    pointsFile = fopen(fileName,'r');
    s=textscan(pointsFile,'%c %.6f %c %.6f');
    x = s{2};
    y = s{4};
    if(length(x) >= n)
        idx = randi([1 length(x)], n,1);
        stem(x(idx),y(idx));
        xlabel('x axis');
        ylabel('y axis');
        title([num2str(n),' random data points']);
        grid on
        retval = 1;
    else 
        if(length(x) < n)
            fprintf('n value is %d must be less or equal to the input file size, which is %d\n',n, length(x));
            retval = -1;
        end
    end
