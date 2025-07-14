#include "..\script_component.hpp"
params ["_unit", "_curValue"];

private _damage = damage _unit;
private _bleeding = _unit getVariable ["ace_medical_woundBleeding", 0];
if (_damage > 0.25 || _bleeding > 0) then {
    // to increase an effect you SUBTRACT
    _curValue = _curValue - (GVAR(bloodIncrease) * (_damage max (linearConversion [0, 0.4, _bleeding, 0, 1])));
} else {
    // to decrease an effect you ADD

    // if water affects blood, it probably should rain and not snow, right?
    if (GVAR(precipitationDecreaseBlood) && {!(rainParams select 15)}) then {
        _curValue = _curValue + (GVAR(bloodDecrease) * (_unit getVariable ["dirt_main_precitipationModifier", 0]));
    };
    _curValue = _curValue + GVAR(bloodDecrease);
};

// return value shuold be between 0 and 1. below 0 will be just set to 0, above 1 will be just set to 1
// 0 == full effect
// 1 == no effect
_curValue
