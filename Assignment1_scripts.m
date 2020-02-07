

%% ================== Exercise 1 ==================

% INSERT YOUR CODE FOR EXERCISE 1 HERE 
salesMetformin = load("salesMetformin.dat");

year= salesMetformin(1,:);
sales =  salesMetformin(2,:);
figure(1);
p = plot(year,sales, "rx-");
p(1).LineWidth = 3;
xlabel("Period");
ylabel("Sales in billions(£)");
grid on




%% ================== Exercise 5 ==================

% INSERT YOUR CODE FOR EXERCISE 5 HERE
%Uniform distribution values
x = 30+(40-30).*rand(1000,1);
y = 10+(20-10).*rand(1000,1);
figure(2);
hold on
p1 = plot(x,y,'bo');

%Normal distribution values
x1 = 1.*randn(1000,1)+20;
y1 = 1.*randn(1000,1)+35;
p2 = plot(x1,y1,'r*');
axis([0 50 0 50]);
xlabel("x axis");
ylabel("y axis");
title("");

grid on
hold off
legend([p1 p2],{'Uniform distribution', 'Normal distribution'}); 





%% ================== Exercise 6 ==================

% INSERT YOUR CODE FOR EXERCISE 6 HERE

x2 = 0+(1-0).*rand(20000,1);
y2 = 0+(1-0).*rand(20000,1);
z2 = 0+(1-0).*rand(20000,1);
I=(find(x2>0.9));
I1=(find(y2>0.9));
I2=(find(z2>0.9));
I3 = find(z2>0.4 | y2>0.4 | x2>0.4);
disp(size(I3));
x3 = x2(I3);
y3 = y2(I3);
z3 = z2(I3);
I4= find(x3<0.5 & y3<0.5 & z3<0.5);
disp(size(I4));
figure(3);
plot3(x2(I),y2(I),z2(I),'b*',x2(I1),y2(I1),z2(I1),'b*',x2(I2),y2(I2),z2(I2),'b*',x3(I4),y3(I4),z3(I4),'r*');
xlabel("x axis");
ylabel("y axis");
zlabel("z axis");



