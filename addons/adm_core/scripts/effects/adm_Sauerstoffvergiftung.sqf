_StarteSkript = _this select 0;
_Effekte = _this select 1;

_Counter = 0;

scopeName "SchleifeStart";
while {_StarteSkript == "true"} do
{
if (_Effekte == "true") then
{
_Counter = _Counter + 1;
_ppO2Color = ppEffectCreate ["colorCorrections", 1001];
_ppO2Blur = ppEffectCreate ["radialBlur", 1002];
_ppO2DynBlur = ppEffectCreate ["DynamicBlur", 1003];
_ppO2Chroma = ppEffectCreate ["chromAberration", 1004];
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
_ppO2Color ppEffectEnable true;
_ppO2Color ppEffectAdjust [1, 1, 0, [1.0,0.0,0.0,0.2], [0,1,0,0.5], [0,0,0,0]]; 
_ppO2Color ppEffectCommit 2;
_ppO2Blur ppEffectEnable true;
_ppO2Blur ppEffectAdjust [0.001,0.001,0.15,0.15];
_ppO2DynBlur ppEffectEnable true;
_ppO2DynBlur ppEffectAdjust [0.5];
_ppO2Chroma ppEffectEnable true;
_ppO2Chroma ppEffectAdjust [0.09,0.09,true];
_ppO2Chroma ppEffectCommit 2;
_ppO2Blur ppEffectCommit 2;
_ppO2DynBlur ppEffectCommit 2;
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
ppEffectDestroy _ppO2Blur;
ppEffectDestroy _ppO2DynBlur;
ppEffectDestroy _ppO2Chroma;
ppEffectDestroy _ppO2Color;
admVarSchmerzen = player getVariable "ACE_medical_pain";
[player, admVarSchmerzen + 0.1] call ace_medical_fnc_adjustPainLevel;
sleep 2;
};
if (_Counter > 0) then
	{	
		_Effekte = "false";
		_Counter = 0;
		breakTo "SchleifeStart";			
	};



};