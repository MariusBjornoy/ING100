%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P00_F5_CalculateAndSetMotorPower.m
% 
% Beregner hvordan joystickdata skal brukes for 
% ? f? motorene til ? bevege seg
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%------------------------------------------------
% Definer parametre til ? beregne motorp?drag. 
%------------------------------------------------
a=0.8; 

%------------------------------------------------
% Beregner motorp?drag og lagrer i datavektor
%------------------------------------------------
PowerA(k) = a*JoyForover(k);


if online
    %------------------------------------------------
    % Setter powerdata mot EV3
    % G?r ikke fortere enn -100 -> +100
    %------------------------------------------------
    motorA.Speed = PowerA(k);
    start(motorA)
else
    %------------------------------------------------
    % simulerer EV3-Matlab kommunikasjon i online=0
    %------------------------------------------------
    pause(0.01) 
end
