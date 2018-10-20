function [media,desviacion] = graficapdfcdf(x,p,nombreva)
% Función graficapdfcdf(x,p,nombreva)
% graficapdfcdf(x,p,nombreva) elabora las gráficas de la pdf y la CDF de la
% variable aleatoria nombreva. x, debe ser un vector con los resultados del
% experimento aleatorio; p, las respectivas probabilidades; y nombreva, una
% cadena de caracteres con el nombre de la variable aleatoria. Se sugiere
% que el nombre sea una letra.
%
% graficapdfcdf(x,p) considera que, por defecto, el nombre de la variable
% aleatoria es 'x'.
%
% graficapdfcdf(x) asume que, por defecto, todos los resultados son
% equiprobables.
%
% graficapdfcdf() muestra el mensaje de la ayuda.
%
% Función graficapdfcdf. Elaborada por: Hans López, hanslop@gmail.com
% Versión 2.0. 26 de agosto de 2017
%   Se cambió el intérprete de los ejes a LaTeX y se modificó el color
%   de la CDF a rojo.
% Versión 1.0. 9 de marzo de 2017
switch nargin
    case 0
        help graficapdfcdf;
        return;
    case 1
        p = ones(1,numel(x))/numel(x);
        nombreva = 'x';
    case 2
        nombreva = 'x';
end
minimo = min(x) - 0.2*(max(x) - min(x));
maximo = max(x) + 0.2*(max(x) - min(x));

subplot(2,1,1)

stem(x,p,'^','Linewidth',3,'MarkerSize',4);
set(gcf,'Color','white');
set(gca,'FontSize',14);
set(gca,'TickLabelInterpreter','Latex');
axis([minimo maximo -0.2*max(p) 1.2*max(p)]);
title('Función de Densidad de Probabilidad',...
    'FontSize',16);
ylabel(['$f_{',upper(nombreva),'}(',lower(nombreva),')$'],'FontSize',14,...
    'Interpreter','Latex');
xlabel(['$',lower(nombreva),'$'],'FontSize',14,'Interpreter','Latex');
grid on;

subplot(2,1,2)

cdfmoneda = cumsum([0 p 0]);
ejex = [minimo x maximo];
stairs(ejex,cdfmoneda,'r','Linewidth',3);
set(gcf,'Color','white');
set(gca,'FontSize',14);
set(gca,'TickLabelInterpreter','Latex');
axis([minimo maximo -0.2 1.2]);
title('Función de Distribución Acumulativa',...
    'FontSize',16);
ylabel(['$F_{',upper(nombreva),'}(',lower(nombreva),')$'],'FontSize',14,...
    'Interpreter','Latex');
xlabel(['$',lower(nombreva),'$'],'FontSize',14,'Interpreter','Latex');
grid on;
media = x*p';
desviacion = sqrt(((x.^2)*p')- media^2);
end