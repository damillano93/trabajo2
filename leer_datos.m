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
