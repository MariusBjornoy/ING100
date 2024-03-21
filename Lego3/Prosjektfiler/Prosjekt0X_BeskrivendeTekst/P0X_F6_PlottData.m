%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F6_PlottData.m
% 
% Denne plasseres enten i while-løkka eller rett etterpå
%
% Husk syntaksen: plot(Tid(1:k),data(1:k))  
% Dette for å få samme opplevelse når online=0 siden
% hele datasettet (1:end) eksisterer i den lagrede .mat fila
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(fig1)

subplot(3,3,1)
plot(Tid(1:k),Lys(1:k)); 
title('Lys')
xlabel('Tid [sek]')

subplot(3,3,2)
plot(Tid(1:k),Bryter(1:k)); 
title('Bryter')
xlabel('Tid [sek]')

subplot(3,3,3)
plot(Tid(1:k),Avstand(1:k)); 
title('Avstand')
xlabel('Tid [sek]')

subplot(3,3,4)
plot(Tid(1:k),Vinkel(1:k)); 
title('Vinkel')
xlabel('Tid [sek]')

subplot(3,3,5)
plot(Tid(1:k),Vinkelhastighet(1:k)); 
title('Vinkelhastighet')
xlabel('Tid [sek]')

subplot(3,3,6)
plot(Tid(1:k),PowerA(1:k)); 
title('PowerA') 
xlabel('Tid [sek]')

subplot(3,3,7)
plot(Tid(1:k),VinkelPosMotorA(1:k)); 
title('VinkelPosMotorA')
xlabel('Tid [sek]')

subplot(3,3,8)
plot(Tid(1:k),JoyForover(1:k)); 
title('JoyForover')
xlabel('Tid [sek]')



%---------------------------------------------------
% tegn nå (viktig kommando)
%---------------------------------------------------
drawnow

