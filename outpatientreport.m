

function data = outpatientreport()
    load 'myhospital.mat';
    data = repmat(struct('LastName','1a','Sex','m','Age',0,'Weight',0,'isSomker',1), 100,1);
    p = randi([1 100],1,10);
    %Converting the text data into array of struct values
   for i = 1:100
       data(i).LastName = LastName{i};
       data(i).Sex = Sex{i};
       data(i).Age = Age(i);
       data(i).Weight = Weight(i);
       data(i).isSomker = isSmoker(i);
       %Print top 10 details of the outpatient data
       if(i < 11)
           fprintf('%s\t\t%s\t\t%d\t\t%d\t\t%d \n', LastName{p(i)},  Sex{p(i)},  Age(p(i)), Weight(p(i)), isSmoker(p(i)));
       end
   end
  grid on
  %Box plot weight vs isSomker of the outpatinet details
  boxplot([data.Weight], [data.isSomker]);
  set(gca, 'YGrid','on')
  xlabel('IsSmoker?')
  ylabel('Weight(Kg)')
end