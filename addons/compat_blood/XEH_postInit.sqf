#include "script_component.hpp"
if (is3DEN || !hasInterface) exitWith {};

// code you want to run in the postInit event.

["dirt_washed", {
    params ["_unit", "_modifier", "_item"];
    private _bloodValue = _unit getVariable ["dirt_main_bloodValue", 1];
    ["dirt_main_adjustValues", [_unit, [
        ["blood", _bloodValue + _modifier]
    ]]] call CBA_fnc_globalEvent;
}] call CBA_fnc_addEventHandler;
