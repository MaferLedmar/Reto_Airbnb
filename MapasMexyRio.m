
mex=MexCityclean
Filtro_Corre= mex(:,[9,10,11,18,20,21,27,28,29,30,31,32,33,34,35,36,37,38,39,40,42]);


%Matriz de correlaciones del Dataframe
Matriz=table2array(Filtro_Corre); %esta línea convierte la tabla en matriz
Mat_Corr=corrcoef(Matriz) %Matriz de correlaciones
%Mapa de calor
figure(1)
h = heatmap(Mat_Corr)

figure(2)
Mex_Vars= mex(:,[13,17,27])
parallelplot(Mex_Vars,'GroupVariable','room_type')
title 'Mex';


rio=RioClean
Filtro_Corre= rio(:,[9,10,18,20,21,27,28,29,30,31,32,33,34,35,36,37,38,39,42]);


%Matriz de correlaciones del Dataframe
Matriz=table2array(Filtro_Corre); %esta línea convierte la tabla en matriz
Mat_Corr=corrcoef(Matriz) %Matriz de correlaciones
%Mapa de calor
figure(3)
h = heatmap(Mat_Corr)

figure(4)
Rio_Vars= rio(:,[13,17,27])
parallelplot(Rio_Vars,'GroupVariable','room_type')
title 'Rio';