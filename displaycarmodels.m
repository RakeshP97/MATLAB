

function ret = displaycarmodels()
    load  cardata.mat;
    [~,ia] = unique(Cylinders);
    cylinder_list =  Cylinders(ia);
    %prompting Menu to choose number of cylinders
    c_cylinder = menu('Choose number of cylinders',string(cylinder_list));
    index = find(Cylinders==cylinder_list(c_cylinder));
    models = string(Model(index,:));
    %Prompting menu to select the Model 
    selected_model = menu('Choose the model', models);
    i = find( Cylinders == cylinder_list(c_cylinder) &  string(Model) == models(selected_model));
    fprintf('Horsepower: %d \nWeight (Kg): %d \nOrigin: %s',Horsepower(i),Weight(i), string(Origin(i,:)));
    ret =1;
end


