

function [C,V] = mykmeans(data,k)
    n = length(data);
    rc = randperm(n,k);
    cent = data(rc,:);
    C = cent;
    while true
        [~,I] = pdist2(cent, data,'euclidean','Smallest',1);
        for i = 1:k
            x= data(I(1,:)==i,:);  
            cent(i,:) = mean(x);
        end
        if isequal(C,cent)
            break;
        end
        C = cent;
    end
    V = I(1,:);
    gscatter(data(:,1),data(:,2),V,'bygckmwrbygckrmw','x')
    hold on
    plot(C(:,1),C(:,2),'rd','MarkerSize',8,'MarkerFaceColor','red');
    title('K-means clustering');
end

    