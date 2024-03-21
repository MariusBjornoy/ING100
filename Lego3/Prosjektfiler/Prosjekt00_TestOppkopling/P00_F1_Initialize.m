%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P00_F1_Initialize.m
%
% Initialiserer EV3'en med sensorer og motorer, 
% samt styrestikken. Kun aktuelt i online=1.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if online
   
    if ismac 
        %------------------------------------------------
        % Mac-bruker:
        % - Laster f?rst Java-bibliotek til styrestikke
        % - Sletter deretter gamle instanser
        % - Lager nye instanser av EV3 og styrestikke
        %------------------------------------------------
        HebiJoystick.loadLibs();
        clear mylego joystick
        mylego = legoev3('USB');
        joystick = HebiJoystick(1);
    else
        %------------------------------------------------
        % PC-bruker:
        % - Sletter f?rst gamle instanser
        % - Lager nye instanser av EV3 og styrestikke
        %------------------------------------------------
        clear mylego joymex2
        mylego = legoev3('USB');
        joymex2('open',0);
    end

    
    %------------------------------------------------
    % Initialiser sensorer (slett de du ikke bruker)
    %------------------------------------------------
    myColorSensor = colorSensor(mylego);
    
    %------------------------------------------------
    % Initialiser motorer (slett de du ikke bruker)
    %------------------------------------------------
    motorA = motor(mylego,'A');
    motorA.resetRotation;



end
