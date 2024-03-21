%?ving 2.1

%a) 
%x = 50;
%r = x/100;
%h = 2;
%f = pi*(r^2)*h
%Linje 4-7 er svaret p? ?vingsoppgave 2.1 a. -> virker

% b)
%A = 20000;   %antall
%h = (9/100);  %konverter h?yden fra cm til M, samtidig som gir en verdi til h
%r = (4/200);  %konverterer diameter til radius i meter, deler derfor p? 200
%s = sqrt((r^2)+(h^2)); %s er side lengden eller hypotenusen i kjeglen, den finner du ved hjelp av pytagoras
%O =  pi*r*s; %Formel for kvadratmeter per iskrem kjegle.
%M = A*O % Formel l?sning p? oppgaven-> Svar oppgitt 115.8 m^2
%Linje 11-16 er svar p? oppgave 2.1 b

% c)

%H = (40/100);
%B = (20/100);
%L = (25/100); 
%H?yde, bredde og lengde ble innf?rt som egne variabler slik at det var
%lett ? endre verdi, dersom du skulle tatt en ny eske.
%V = H*B*L; %volum til esken
%r = (5/200); %radius til kulen diameteren delt p? to i meter
%v=((4/3)*pi*r^3); %volum kule
%A = V/v; %Antall kuler som f?r plass n?yaktig
%floor(A) %Antall kuler som f?r plass reelt(kan ikke f? plass til en halv
%kule)

%Obs kunne brukt cm i oppgaven, men valgte meter ssom felles m?leenhet, det
%har ikke noe ? si s? lenge alle enhetene er like. I dette tilfellet ble
%det muligens mer arbeid, men det kan v?re greit ? v?re obs p? p? ? bruke
%meter til vanlig. 


