%% leer los datos 
base = ["base1" "base2" "base3" "base4" "base5"];
pacientes = leerpacientes('base1/RECORDS.txt');
pas = table2array(pacientes(:,1));
A = leer('base1/I01.csv');
Lb = length(base);
for c = 1:Lb
pacientes = leerpacientes(base(c)+'/RECORDS.txt')
pas = table2array(pacientes(:,1));
L = length(pas);
 for k = 2:L
     archivo = base(c)+"/"+pas(k)+".csv"
  B = leer(archivo);
  A = [A;B];
 end 
    
end

%% graficar datos
%%grafica todos los datos
rrinterval = table2array(A(:,2)); 
dato = 60./rrinterval;
pdfcdfcontinua(dato,0,300)

%%grafica por genero 
%% femenino
Femenino = A("F" == A.sexo,:);
generoF = table2array(Femenino(:,2)); 
graficaF = 60./generoF;
pdfcdfcontinua(graficaF,0,200)

%% masculino
Masculino = A("M" == A.sexo,:);
generoM = table2array(Masculino(:,2)); 
graficaM = 60./generoM;
pdfcdfcontinua(graficaM,0,200)


%%grafica por edad 
%% 18 a 30 años
edad1 = A(18 == A.edad,:);
lim = 30;
for c = 19:lim
cc = A(c == A.edad,:);
edad1 = [edad1;cc];
end
edadA = table2array(edad1(:,2)); 
graficaedadA = 60./edadA;
pdfcdfcontinua(graficaedadA,0,200)

%% 31 a 40 años
edad2 = A(31 == A.edad,:);
lim = 40;
for c = 32:lim
cc = A(c == A.edad,:);
edad2 = [edad2;cc];
end
edadB = table2array(edad2(:,2)); 
graficaedadB = 60./edadB;
pdfcdfcontinua(graficaedadB,0,200)

%% 41 a 50 años 
edad3 = A(41 == A.edad,:);
lim = 50;
for c = 42:lim
cc = A(c == A.edad,:);
edad3 = [edad3;cc];
end
edadC = table2array(edad3(:,2)); 
graficaedadC = 60./edadC;
pdfcdfcontinua(graficaedadC,0,200)

%% 51 a 60 años 
edad4 = A(51 == A.edad,:);
lim = 60;
for c = 52:lim
cc = A(c == A.edad,:);
edad4 = [edad4;cc];
end
edadD = table2array(edad4(:,2)); 
graficaedadD = 60./edadD;
pdfcdfcontinua(graficaedadD,0,200)

%% 61 a 70 años 
edad5 = A(61 == A.edad,:);
lim = 70;
for c = 62:lim
cc = A(c == A.edad,:);
edad5 = [edad5;cc];
end
edadE = table2array(edad5(:,2)); 
graficaedadE = 60./edadE;
pdfcdfcontinua(graficaedadE,0,200)
%% 71 a 80 años 
edad6 = A(71 == A.edad,:);
lim = 80;
for c = 72:lim
cc = A(c == A.edad,:);
edad6 = [edad6;cc];
end
edadF = table2array(edad6(:,2)); 
graficaedadF = 60./edadF;
pdfcdfcontinua(graficaedadF,0,200)



