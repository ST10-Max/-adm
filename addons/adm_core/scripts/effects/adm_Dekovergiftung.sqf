_StarteSkript = _this select 0;
_Effekte = _this select 1;

_Counter = 0;

scopeName "SchleifeStart";
while {_StarteSkript == "true"} do
{
if (_Effekte == "true") then
{
_Counter = _Counter + 1;
_DekoColor = ppEffectCreate ["colorCorrections", 1001];
_DekoBlur = ppEffectCreate ["radialBlur", 1002];
_DekoDynBlur = ppEffectCreate ["DynamicBlur", 1003];
_DekoChroma = ppEffectCreate ["chromAberration", 1004];
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
_DekoColor ppEffectEnable true;
_DekoColor ppEffectAdjust [1, 1, 0, [1.0,0.0,0.0,0.2], [0,1,0,0.5], [0,0,0,0]]; 
_DekoColor ppEffectCommit 1;
_DekoBlur ppEffectEnable true;
_DekoBlur ppEffectAdjust [0.001,0.001,0.15,0.15];
_DekoDynBlur ppEffectEnable true;
_DekoDynBlur ppEffectAdjust [0.5];
_DekoChroma ppEffectEnable true;
_DekoChroma ppEffectAdjust [0.09,0.09,true];
_DekoChroma ppEffectCommit 1;
_DekoBlur ppEffectCommit 1;
_DekoDynBlur ppEffectCommit 1;
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
ppEffectDestroy _DekoBlur;
ppEffectDestroy _DekoDynBlur;
ppEffectDestroy _DekoChroma;
ppEffectDestroy _DekoColor;
admVarSchmerzen = player getVariable "ACE_medical_pain";
[player, admVarSchmerzen + 0.1] call ace_medical_fnc_adjustPainLevel;
sleep 1;
};
if (_Counter > 0) then
	{	
		_Effekte = "false";
		_Counter = 0;
		breakTo "SchleifeStart";			
	};



};