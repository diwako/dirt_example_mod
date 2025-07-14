[
    QGVAR(bloodIncrease),
    "SLIDER",
    [LSTRING(bloodincrease), LSTRING(bloodincrease_desc)],
    ["STR_dirt_main_Category", format ["2: %1", localize "STR_dirt_main_subcategoryTextures"]],
    [0.0001, 1, 0.05, 4],
    false
] call cba_settings_fnc_init;
[
    QGVAR(bloodDecrease),
    "SLIDER",
    [LSTRING(blooddecrease), LSTRING(blooddecrease_desc)],
    ["STR_dirt_main_Category", format ["2: %1", localize "STR_dirt_main_subcategoryTextures"]],
    [0.0001, 1, 0.003, 4],
    false
] call cba_settings_fnc_init;

[
    QGVAR(precipitationDecreaseBlood),
    "CHECKBOX",
    [LSTRING(precipitationDecreaseBlood), LSTRING(precipitationDecreaseBlood_desc)],
    ["STR_dirt_main_Category", format ["3: %1", localize "STR_dirt_main_subcategoryMisc"]],
    true,
    false
] call cba_settings_fnc_init;
