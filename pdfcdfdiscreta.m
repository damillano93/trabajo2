function [] = pdfcdfdiscreta(datos)
    datos = datos(:)'; %convierte la matriz en un vector fila
    total = numel(datos);
    x = unique(datos); % devuelve un vector con los únicos elementos de datos
    fr = zeros(1,numel(x));
    for n = 1:numel(x)
        fr(n) = sum(datos==x(n))/total;
    end
    graficapdfcdf(x,fr);
end