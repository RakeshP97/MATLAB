 


data = load('pcadata.mat');
figure(1);
plot(data.X(:,1),data.X(:,2),'bo','MarkerSize',7)
title('Datapoints and their 2 principal components');
axis([0,7,2,8])
[Xmu, mu] = subtractMean(data.X);
[U, S] = myPCA(Xmu);
line([mu(1), mu(1)+U(1,1)],[mu(2), mu(1)+U(1,2)],'Color','red', 'LineWidth',2)
line([mu(1), mu(2)+U(2,1)],[mu(2), mu(2)+U(2,2)],'Color','green','LineWidth',2)
k = 1;
Z = projectData(Xmu, U, k);
disp(Z(1:3,:));
Xrec = recoverData(Z,U,k,mu);
figure(2);
plot(data.X(:,1),data.X(:,2),'bo', Xrec(:,1),Xrec(:,2),'r*');
title('Datapoints and their reconstruction');
axis([0,7,2,8]);
data1 = load('pcafaces.mat');
figure(3);
displayData(data1.X(1:100, :));
title('Orginal faces');
[Xmu1, mu1] = subtractMean(data1.X);
[U1, S1] = myPCA(Xmu1);
k=200;
Z1 = projectData(Xmu1, U1, k);
Xrec1 = recoverData(Z1,U1,k,mu1);
figure(4);
subplot(1,2,1);
displayData(data1.X(1:100, :));
title('Orginal faces');
subplot(1,2,2);
displayData(Xrec1(1:100, :));
title('Recovered faces');
