#include "script_component.hpp"
class CfgPatches {
    class ADDON {
        name = COMPONENT_NAME;
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"dirt_main"};
        author = "diwako";
        url = "https://github.com/diwako/dirt_example_mod";
        authorUrl = "https://github.com/diwako/dirt_example_mod";
        skipWhenMissingDependencies = 1;
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"

// see: https://github.com/diwako/dirt/wiki/Adding-Effects-(Mods-and-Missions)
class dirt_textures_man {
    // import the basic burn effect from the main addon
    class burn;
    // add a new effect that inherits from the burn effect
    // this is to future proof in case new attributes are added
    class blood: burn {
        // array of textures, can be multiple textures, chooses randomly
        textures[] = {QPATHTOF(textures\ketchup_ca.paa)};
        // function called, _this is [_unit, _currentEffectValue]
        function = QFUNC(effectBloodChange);
        // condition is if to run, _this is the unit
        condition = ""; // empty string == always enabled
        // should the effect be applied to the backpack
        affectBackpack = 0; // 0 == no, 1 == yes
    };
};
