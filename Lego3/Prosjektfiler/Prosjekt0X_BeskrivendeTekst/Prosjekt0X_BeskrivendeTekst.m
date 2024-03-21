%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Prosjekt0X_.....
%
% Hensikten med programmet er ....
% F?lgende sensorer brukes.....
% Programmet beregner .....
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all; close all           % Alltid lurt ? rydde opp f?rst
online=1;                      % Er du koplet til EV3 eller ikke?
filename = 'P0X_DataNavn.mat'; % Navnet p? datafilen n?r online=0. 

P0X_F1_Initialize
P0X_F2_GetFirstMeasurement
while ~JoyMainSwitch
    P0X_F3_GetNewMeasurement
    P0X_F4_MathCalculations    
    P0X_F5_CalculateAndSetMotorPower
    P0X_F6_PlottData           % kan flyttes til etter while-l?kka 
end
P0X_F7_CloseMotorsAndSensors




