pacientes = leerpacientes('base5/RECORDS.txt')
pas = table2array(pacientes(:,1));
L = length(pas);
A = leer('base5/01911.csv');
 for k = 2:L
     archivo = "base5/"+pas(k)+".csv"
  B = leer(archivo);
  A = [A;B];
 end