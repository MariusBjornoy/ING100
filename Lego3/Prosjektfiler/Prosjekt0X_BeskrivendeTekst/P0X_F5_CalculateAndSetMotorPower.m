%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan motorene skal bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------
a = 1;  
b = 1;

%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
% (slett de motorene du ikke bruker og lag egen kode)
%------------------------------------------------
PowerA(k) = a*JoyForover(k);
PowerB(k) = a*b*Lys(k);
PowerC(k) = b*Bryter(k);

if online
    
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100 selv 
    % om powerverdi er st?rre
    % (slett de motorene du ikke bruker)
    %------------------------------------------------
    motorA.Speed = PowerA(k);
    motorB.Speed = PowerB(k);
    motorC.Speed = PowerC(k);
    
    start(motorA)
    start(motorB)
    start(motorC)

else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
