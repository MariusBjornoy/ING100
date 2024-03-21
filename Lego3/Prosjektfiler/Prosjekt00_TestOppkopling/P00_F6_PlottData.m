
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P00_F6_PlottData.m
% 
% Denne plasseres enten i while-l?kka eller rett etterp?
%
% Huske syntaksen plot(Tid(1:k),data(1:k))  
% Dette for ? f? samme opplevelse n?r online=0 siden
% hele datasettet (1:end) eksisterer i den lagrede .mat fila
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(fig1)
subplot(2,2,1)
plot(Tid(1:k),PowerA(1:k)); 
xlabel('Tid [sek]')
title('PowerA') 

subplot(2,2,2)
plot(Tid(1:k),JoyForover(1:k)); 
xlabel('Tid [sek]')
title('JoyForover') 

subplot(2,2,3)
plot(Tid(1:k),VinkelPosMotorA(1:k)); 
xlabel('Tid [sek]')
title('Vinkelposisjon motor A')

subplot(2,2,4)
plot(Tid(1:k),Lys(1:k)); 
xlabel('Tid [sek]')
title('Lys')



%---------------------------------------------------
% tegn n? (viktig kommando)
%---------------------------------------------------
drawnow

