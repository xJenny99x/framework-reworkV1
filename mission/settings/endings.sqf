_success = true;

switch (_this select 0) do {
// =============================================================================
//                       GENERIC MISSION OVER SCREEN                           |
// =============================================================================
case "generic_ending": {
        _success = true;
    };
// =============================================================================
//                ENDING FOR WHEN THE PLAYERS WIN THE MISSION                  |
// =============================================================================
case "victory": {           
        _success = true;
    };    
// =============================================================================
//                       ... AND FOR WHEN THEY DONT                            |
// =============================================================================    
case "defeat": {
        _success = false;
    };
};
// =============================================================================

_success