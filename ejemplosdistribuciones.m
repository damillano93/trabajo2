%% Distribuci�n uniforme continua
% CDF
subplot(2,1,1);
x = linspace(-1,2,1000);
cdf = unifcdf(x,0,1);
superplot(x,cdf,...
    'Funci�n de Distribuci�n Acumulativa Uniforme',...
    '$x$','$F_X(x)$');
legend({'$F_X(x)\sim\mathcal{U}(0,1)$'},...
    'Location','NorthWest','Interpreter','Latex');

% pdf
subplot(2,1,2);
x = linspace(-1,2,1000);
pdf = unifpdf(x,0,1);
superplot(x,pdf,...
    'Funci�n de Densidad de Probabilidad Uniforme',...
    '$x$','$f_X(x)$');
legend({'$f_X(x)\sim\mathcal{U}(0,1)$'},...
    'Location','NorthWest','Interpreter','Latex');

%% Distribuci�n exponencial
% CDF
subplot(2,1,1);
t = linspace(-1,6,1000);
cdf = expcdf(t,1);
superplot(t,cdf,...
    'Funci�n de Distribuci�n Acumulativa Exponencial',...
    '$t$','$F_T(t)$');
legend({['$F_T(t)\sim$','Exp','$(1)$']},...
    'Location','NorthWest','Interpreter','Latex');

% pdf
subplot(2,1,2);
t = linspace(-1,6,1000);
pdf = exppdf(t,1);
superplot(t,pdf,...
    'Funci�n de Densidad de Probabilidad Exponencial',...
    '$t$','$f_T(t)$');
legend({['$f_T(t)\sim$','Exp','$(1)$']},...
    'Location','NorthWest','Interpreter','Latex');

%% Distribuci�n normal est�ndar
% CDF
sigma = 1;

subplot(2,1,1);
z = linspace(-5,5,1000);
cdf = normcdf(z,0,sigma);
superplot(z,cdf,...
    'Funci�n de Distribuci�n Acumulativa Normal',...
    '$z$','$F_Z(z)$');
legend({'$F_Z(z)\sim\mathcal{N}(0,1)$'},...
    'Location','NorthWest','Interpreter','Latex');

% pdf
subplot(2,1,2);
z = linspace(-5,5,1000);
pdf = normpdf(z,0,sigma);
superplot(z,pdf,...
    'Funci�n de Densidad de Probabilidad Exponencial',...
    '$z$','$f_Z(z)$');
legend({'$f_Z(z)\sim\mathcal{N}(0,1)$'},...
    'Location','NorthWest','Interpreter','Latex');