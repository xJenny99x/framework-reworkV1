/*
================================================================================

NAME:
    BRM_fnc_syncTime
    
AUTHOR(s):
    Nife

DESCRIPTION:
    Synchronizes time with the server.

PARAMETERS:
    None.
    
USAGE:
    [] spawn BRM_fnc_syncTime.
    
RETURNS:
    Nothing.

================================================================================
*/

waitUntil{!(isNil "player_is_jip")};
if !(player_is_jip) exitWith {};

waitUntil {!isNil "current_server_time"};

sleep 1;

["LOCAL", "LOG", format ["=== PLAYER SYNCRONIZING TIME @ %8: DATE: %1 | FOG: %2 | RAIN: %3 | OVERCAST %4 | RAINBOW: %5 | WIND STRENGTH: %6 | WIND FORCE: %7 | WAVES: %8",current_server_time,current_server_fog,current_server_rain,current_server_overcast,current_server_rainbow,current_server_windstr,current_server_windforce,current_server_waves]] call BRM_fnc_doLog;

