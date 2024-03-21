%Oppgave A
%Bruk plotting og egendefinerte funksjoner

% Opggave 1) plot andregradsligningen y=x^2+x-12
%oppgave del 1
x = 0:1:500;
y = x.^2 + x -12 ;
plot(x,y)
figure(1)
title('Oppgave 1')
xlabel('X-akse')
ylabel('Y-akse')
grid on



%Oppgave 2
y = 0;
y = (a*x.^2)+(b*x)+c;
x_1 = ((-b)+sqrt((b^2)-(4*a*c)))/(2*a);
x_2 = ((-b)-sqrt((b^2)-(4*a*c)))/(2*a);
x_1
x_2

%oppgave 3
a = 1;
b = 1;
c = -12;
x_3 = ((-b)+sqrt((b^2)-(4*a*c)))/(2*a);
x_4 = ((-b)-sqrt((b^2)-(4*a*c)))/(2*a);
x_3
x_4

%oppgave 4
Utslag = [5, 3.2, 1.5, 0, -0.5, 0, 1.5, 2.8, 5];
Tid = [1,2,3,4,5,6,7,8,9];
plot(Tid,Utslag);
figure(1);
grid on
xlabel('Tid')
ylabel('Utslag')
title('oppgave 4')

%oppgave 5
%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( Tid, utslag_1 );

% Set up fittype and options.
ft = fittype( 'poly2' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'utslag_1 vs. Tid', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel Tid
ylabel utslag_1
grid on
%funksjonenen gitt av curve fit er  f(x) = p1*x^2 + p2*x + p3

%Oppgave 6
T2= Tid.*0.5;
utslag_1 = [5, 3.2, 1.5, 0, -0.5, 0, 1.5, 2.8, 5];

%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( T2, utslag_1 );

% Set up fittype and options.
ft = fittype( 'poly5' );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'utslag_1 vs. T2', 'untitled fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel T2
ylabel utslag_1
grid on


%% Oppgave 7
% Formelen gitt med curve fitting i oppgave 5 er 0.333*x^2-3.353*x+8.267
% Derfor kan vi bruke formelen for andregradsligninger laget i oppgave A2
% for ? finne null punktene

a = 0.333
b = -3.353
c = 8.267
x_5 = ((-b)+sqrt((b^2)-(4*a*c)))/(2*a);
x_6 = ((-b)-sqrt((b^2)-(4*a*c)))/(2*a);
x_5
x_6


