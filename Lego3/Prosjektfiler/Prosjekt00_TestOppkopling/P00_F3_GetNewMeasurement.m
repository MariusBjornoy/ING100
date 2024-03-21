%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% P00_F3_GetNewMeasurement.m
% 
% Leser inn nye data fra EV3 og styrestikke 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------
% ?ker diskret tellevariabel (felles for online=0=1)
%---------------------------------------------------
k=k+1;  

if online
    %------------------------------------------------
    % Tid g?tt siden f?rste m?ling
    %------------------------------------------------
    Tid(k) = toc;                

    %------------------------------------------------
    % Hent ny m?ling (slett de du ikke bruker)
    %------------------------------------------------
    Lys(k) = double(readLightIntensity(myColorSensor,'reflected'));

    %------------------------------------------------
    % Hent m?ling av motorposisjoner (slett om du ikke bruker)
    %------------------------------------------------
    VinkelPosMotorA(k) = double(motorA.readRotation);
    
    %------------------------------------------------
    % Sp?r etter nye data fra styrestikke.
    % Utvid selv med andre knapper og akser.
    %------------------------------------------------
    if ismac
        skalering = 100;       % konvertering fra 1 til 100%
        JoyMainSwitch = button(joystick,1);
        JoyForover(k) = -skalering*axis(joystick,2);  
    else
        skalering = 100/2^15;  % konvertering fra 2^15 til 100%
        joystick      = joymex2('query',0);
        JoyMainSwitch = joystick.buttons(1);
        JoyForover(k) = -skalering*double(joystick.axes(2));
    end
    
else
    %------------------------------------------------
    % online=0 
    % N?r k er like stor som antall m?linger i Tid,
    % simuleres det at bryter p? styrestikke trykkes inn.
    %------------------------------------------------
    if k==numel(Tid)
        JoyMainSwitch=1; 
    end
end
