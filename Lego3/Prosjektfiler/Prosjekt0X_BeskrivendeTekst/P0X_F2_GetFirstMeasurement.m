%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P0X_F2_GetFirstMeasurement.m
% 
% F?r tak i f?rste m?ling fra EV3 med tilh?rende tidspunkt.
% Definerer variable som skal brukes.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if online==1

    %------------------------------------------------
    % setter diskret tellevariabel
    % starter stoppeklokka og setter Tid(1)=0
    %------------------------------------------------
    k=1;
    tic
    Tid(1) = 0;              

    %------------------------------------------------
    % hent f?rste m?ling fra sensorene (kommenter bort de du ikke bruker)
    %------------------------------------------------
    % myColorSensor
    Lys(1) = double(readLightIntensity(myColorSensor,'reflected')); 
    % Farge  = readColor(myColorSensor); 
    % Lys(1) = double(readLightIntensity(myColorSensor)); 

    % myTouchSensor
    Bryter(1)  = double(readTouch(myTouchSensor));   

    % mySonicSensor, avlest i meter
    Avstand(1) = double(readDistance(mySonicSensor));   

    % myGyroSensor
    resetRotationAngle(myGyroSensor);
    GyroAngle(1) = double(readRotationAngle(myGyroSensor));
    GyroRate(1)  = double(readRotationRate(myGyroSensor));
    

    %------------------------------------------------
    % hent m?ling av motorposisjoner (kommenter bort de du ikke bruker)
    %------------------------------------------------
    VinkelPosMotorA(1) = double(motorA.readRotation);
    VinkelPosMotorB(1) = double(motorB.readRotation);
    VinkelPosMotorC(1) = double(motorC.readRotation);
    
    %------------------------------------------------
    % sp?r etter data fra styrestikke
    % Utvid selv med andre knapper og akser
    %------------------------------------------------
    if ismac
        skalering = 100;       % konvertering fra 1 til 100%
        JoyMainSwitch = button(joystick,1);
        JoyForover(1) = -skalering*axis(joystick,2);  
    else
        skalering = 100/2^15;  % konvertering fra 2^15 til 100%
        joystick      = joymex2('query',0);
        JoyMainSwitch = joystick.buttons(1);
        JoyForover(1) = -skalering*double(joystick.axes(2)); 
    end
    

else
    %--------------------------------------------------------
    % Dersom online=0 lastes datafil spesifisert i hovedfilen. 
    % Dersom datafilen innholder variabelen online=1 eller 
    % tellevariabelen k fra eksperimentet, indikerer det at hele 
    % workspace kanskje ble lagret i .mat-filen, muligens ogs? 
    % beregnede verdier. Lag derfor ny .mat-fil med kun 
    % tidsvektoren og m?ledata fra EV3 og styrestikke. 
    %--------------------------------------------------------
    load(filename)     
    if online==1 || k>1
        errordlg(['V?r klar over at filen ',filename, ...
            ' inneholder mer enn bare m?ledata.',...
            ' Er den lagret p? riktig m?te?'])
        return
    end
    JoyMainSwitch=0;  
end

%----------------------------------------------------
% Definer datavektorer og parametre.
% Denne koden er felles for online=0=1
% 
% NB: Husk at k=2 i neste script P0X_F3_GetNewMeasurement.m. 
% Det er derfor viktig at de datavektorene som ikke skal 
% v?re 0 i f?rste element, initialiseres her!!!
%----------------------------------------------------
nullflow = Lys(1);         

%-----------------------------------------------------------
% Initialiser figur fig1 (legg til flere figurer etterhvert)
%-----------------------------------------------------------
fig1=figure;
screen = get(0,'Screensize');
set(fig1,'Position',[1,1,0.5*screen(3), 0.5*screen(4)])

