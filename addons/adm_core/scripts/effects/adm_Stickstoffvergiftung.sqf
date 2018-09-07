_StarteSkript = _this select 0;
_Effekte = _this select 1;
_Counter = 0;

scopeName "SchleifeStart";
while {_StarteSkript == "true"} do
{
if (_Effekte == "true") then
{
_Counter = _Counter + 1;
_ppN2Color = ppEffectCreate ["colorCorrections", 1001];
_ppN2Blur = ppEffectCreate ["radialBlur", 1002];
_ppN2DynBlur = ppEffectCreate ["DynamicBlur", 1003];
_ppN2Chroma = ppEffectCreate ["chromAberration", 1004];
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
_ppN2Color ppEffectEnable true;
_ppN2Color ppEffectAdjust [1, 1, 0, [0.6,0.3,0.3,0.2], [0,1,0,0.5], [0,0,0,0]]; 
_ppN2Color ppEffectCommit 2;
_ppN2Blur ppEffectEnable true;
_ppN2Blur ppEffectAdjust [0.01,0.01,0.03,0.03];
_ppN2DynBlur ppEffectEnable true;
_ppN2DynBlur ppEffectAdjust [0.5];
_ppN2Chroma ppEffectEnable true;
_ppN2Chroma ppEffectAdjust [0.15,0.15,true];
_ppN2Chroma ppEffectCommit 2;
_ppN2Blur ppEffectCommit 2;
_ppN2DynBlur ppEffectCommit 2;
titleText ["","BLACK OUT",1];
sleep 1;
titleText ["","BLACK IN",1];
ppEffectDestroy _ppN2Blur;
ppEffectDestroy _ppN2DynBlur;
ppEffectDestroy _ppN2Chroma;
ppEffectDestroy _ppN2Color;
sleep 2;
};
if (_Counter > 0) then
	{	
		_Effekte = "false";
		_Counter = 0;
		breakTo "SchleifeStart";			
	};



};