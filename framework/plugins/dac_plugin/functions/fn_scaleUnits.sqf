private ["_ret"];

#include "includes\dictionary.sqf"

_a = _this select 0;

switch (true) do {
    
    case (_a in _aliasHUGE): { _ret = [14,4,10,40] };
    
    case (_a in _aliasLARGE): { _ret = [10,3,10,40] };
    
    case (_a in _aliasMEDIUM): { _ret = [6,2,10,40] };
    
    case (_a in _aliasSMALL): { _ret = [4,2,10,40] };
    
    case (_a in _aliasMINISCULE): { _ret = [2,2,10,40] };
    
    default { _ret = [6,2,10,40] };
};

_ret