private["_gear"];
_unit = _this select 0;

_gear = [_unit] call BRM_fnc_getGear;

if (mission_TFAR_enabled) then {
    _unit setVariable ["tf_unable_to_use_radio", true];
};

sleep 1;

removeVest _unit;
removeHeadgear _unit;
removeBackpack _unit;
removeGoggles _unit;
removeUniform _unit;
removeAllItems _unit;
removeAllWeapons _unit;

_oldgrp = group _unit;

player enablesimulation false;
player allowDamage false;

[_unit] joinSilent grpnull;

_unit setPos [0,0,10];

player setVariable ["isDead", true, true];

if ("cssa3_spectator" in usedPlugins) then {
    ["forced"] spawn CSSA3_fnc_createSpectateDialog;
};

sleep 5;

_unit unlinkItem "ItemRadio";
_unit removeItem "ItemRadio";

waitUntil{!([getPlayerUID _unit, name _unit, (_unit getVariable "unit_side")] in mission_dead_players)};

titletext ["You are respawning...", "BLACK FADED",0];

closeDialog 0;

player setVariable ["isDead", false, true];

[_unit, _gear] call BRM_fnc_setGear;

if (mission_TFAR_enabled) then {
    _unit setVariable ["tf_unable_to_use_radio", false];
};

[_unit] joinSilent _oldgrp;

_respawn = [_unit] call BRM_fnc_getSpawnPoint;

_unit setPos getMarkerPos _respawn;

player enablesimulation true;
player allowDamage true;
