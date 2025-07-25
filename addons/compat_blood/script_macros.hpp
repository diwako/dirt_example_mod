//D.I.R.T. script macros
#include "\x\cba\addons\main\script_macros_common.hpp"
#define DFUNC(var1) TRIPLES(ADDON,fnc,var1)
#ifdef DISABLE_COMPILE_CACHE
  #undef PREP
  #define PREP(fncName) DFUNC(fncName) = compileScript [QPATHTOF(functions\DOUBLES(fnc,fncName).sqf)]
#else
  #undef PREP
  #define PREP(fncName) [QPATHTOF(functions\DOUBLES(fnc,fncName).sqf), QFUNC(fncName)] call CBA_fnc_compileFunction
#endif
