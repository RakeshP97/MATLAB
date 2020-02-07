

function avg_calr = caloriesaverage(n)
global totalc;
global number_of_ele;
 if n == 0
     avg_calr = 0;
     number_of_ele = 0;
     totalc = 0;
 else
     if isempty(totalc)
         totalc = 0;
         number_of_ele = 0;
     end 
     if (totalc + n) > 2000
         fprintf('you have reached the recommended calories consumption for one day');
         avg_calr = -1;
         return;
     else
         number_of_ele = number_of_ele +1 ;
         totalc = totalc + n;
         avg_calr = totalc/number_of_ele;
         fprintf('%d\t%d', totalc,number_of_ele);
         return;
     end
 end

 end

  