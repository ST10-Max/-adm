_case = {};

admPpFarbwahrnehmung = ppEffectCreate ["colorCorrections", 1001];
admPpFarbwahrnehmung ppEffectEnable true;
admPpFarbwahrnehmung ppEffectCommit 0;



if (admVarTauchtiefe == 1) then {_case = 1};
if (admVarTauchtiefe == 2) then {_case = 2};
if (admVarTauchtiefe == 3) then {_case = 3};
if (admVarTauchtiefe == 4) then {_case = 4};
if (admVarTauchtiefe == 5) then {_case = 5};
if (admVarTauchtiefe == 6) then {_case = 6};
if (admVarTauchtiefe == 7) then {_case = 7};
if (admVarTauchtiefe == 8) then {_case = 8};
if (admVarTauchtiefe == 9) then {_case = 9};
if (admVarTauchtiefe == 10) then {_case = 10};
if (admVarTauchtiefe == 11) then {_case = 11};
if (admVarTauchtiefe == 12) then {_case = 12};
if (admVarTauchtiefe == 13) then {_case = 13};
if (admVarTauchtiefe == 14) then {_case = 14};
if (admVarTauchtiefe == 15) then {_case = 15};
if (admVarTauchtiefe == 16) then {_case = 16};
if (admVarTauchtiefe == 17) then {_case = 17};
if (admVarTauchtiefe == 18) then {_case = 18};
if (admVarTauchtiefe == 19) then {_case = 19};
if (admVarTauchtiefe == 20) then {_case = 20};
if (admVarTauchtiefe == 21) then {_case = 21};
if (admVarTauchtiefe == 22) then {_case = 22};
if (admVarTauchtiefe == 23) then {_case = 23};
if (admVarTauchtiefe == 24) then {_case = 24};
if (admVarTauchtiefe == 25) then {_case = 25};
if (admVarTauchtiefe == 26) then {_case = 26};
if (admVarTauchtiefe == 27) then {_case = 27};
if (admVarTauchtiefe == 28) then {_case = 28};
if (admVarTauchtiefe == 29) then {_case = 29};
if (admVarTauchtiefe == 30) then {_case = 30};
if (admVarTauchtiefe == 31) then {_case = 31};
if (admVarTauchtiefe == 32) then {_case = 32};
if (admVarTauchtiefe == 33) then {_case = 33};
if (admVarTauchtiefe == 34) then {_case = 34};
if (admVarTauchtiefe == 35) then {_case = 35};
if (admVarTauchtiefe == 36) then {_case = 36};
if (admVarTauchtiefe == 37) then {_case = 37};
if (admVarTauchtiefe == 38) then {_case = 38};
if (admVarTauchtiefe == 39) then {_case = 39};
if (admVarTauchtiefe == 40) then {_case = 40};
if (admVarTauchtiefe == 41) then {_case = 41};
if (admVarTauchtiefe == 42) then {_case = 42};
if (admVarTauchtiefe == 43) then {_case = 43};
if (admVarTauchtiefe == 44) then {_case = 44};
if (admVarTauchtiefe == 45) then {_case = 45};
if (admVarTauchtiefe == 46) then {_case = 46};
if (admVarTauchtiefe == 47) then {_case = 47};
if (admVarTauchtiefe == 48) then {_case = 48};
if (admVarTauchtiefe == 49) then {_case = 49};
if (admVarTauchtiefe == 50) then {_case = 50};
if (admVarTauchtiefe == 51) then {_case = 51};
if (admVarTauchtiefe == 52) then {_case = 52};
if (admVarTauchtiefe == 53) then {_case = 53};
if (admVarTauchtiefe == 54) then {_case = 54};
if (admVarTauchtiefe == 55) then {_case = 55};
if (admVarTauchtiefe == 56) then {_case = 56};
if (admVarTauchtiefe == 57) then {_case = 57};
if (admVarTauchtiefe == 58) then {_case = 58};
if (admVarTauchtiefe == 59) then {_case = 59};
if (admVarTauchtiefe == 60) then {_case = 60};
if (admVarTauchtiefe == 61) then {_case = 61};
if (admVarTauchtiefe == 62) then {_case = 62};
if (admVarTauchtiefe == 63) then {_case = 63};
if (admVarTauchtiefe == 64) then {_case = 64};
if (admVarTauchtiefe == 65) then {_case = 65};
if (admVarTauchtiefe == 66) then {_case = 66};
if (admVarTauchtiefe == 67) then {_case = 67};
if (admVarTauchtiefe == 68) then {_case = 68};
if (admVarTauchtiefe == 69) then {_case = 69};
if (admVarTauchtiefe == 70) then {_case = 70};
if (admVarTauchtiefe == 71) then {_case = 71};
if (admVarTauchtiefe == 72) then {_case = 72};
if (admVarTauchtiefe == 73) then {_case = 73};
if (admVarTauchtiefe == 74) then {_case = 74};
if (admVarTauchtiefe == 75) then {_case = 75};
if (admVarTauchtiefe == 76) then {_case = 76};
if (admVarTauchtiefe == 77) then {_case = 77};
if (admVarTauchtiefe == 78) then {_case = 78};
if (admVarTauchtiefe == 79) then {_case = 79};
if (admVarTauchtiefe == 80) then {_case = 80};
if (admVarTauchtiefe > 80) then {_case = 100};

switch (_case) do
{
	//Eliminiere ROT aus dem Bild
    case 1:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [0.2,0.05,0.0125,0]]; 
	};
    case 2:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [0.4,0.1,0.025,0]]; 
	};
	case 3:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [0.6,0.15,0.0375,0]]; 
	};
	case 4:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [0.8,0.2,0.05,0]]; 
	};
	case 5:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.25,0.0625,0]]; 
	};
	//Eliminiere ORANGE aus dem Bild
	case 6:
	{ 
	admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.30,0.075,0]]; 
	};
	case 7:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.35,0.0875,0]]; 
	};
	case 8:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.40,0.1,0]]; 
	};
	case 9:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.45,0.1125,0]]; 
	};
	case 10:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.50,0.125,0]];
	};
	//Eliminiere GELB aus dem Bild
	case 11:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.55,0.1375,0]];
	};
	case 12:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.60,0.15,0]];
	};
	case 13:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.65,0.1625,0]];
	};
	case 14:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.70,0.1875,0]];
	};
	case 15:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.75,0.2,0]];
	};
	case 16:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.80,0.2125,0]];
	};
	case 17:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,0.90,0.225,0]];
	};
	//Eliminiere GRÜN aus dem Bild
	case 18:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.2375,0]];
	};
	case 19:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.25,0]];
	};
	case 20:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.2625,0]];
	};
	case 21:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.2875,0]];
	};
	case 22:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.3,0]];
	};
	case 23:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.3125,0]];
	};
	case 24:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.325,0]];
	};
	//Eliminiere BLAU aus dem Bild
	case 25:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.3375,0]]; 
	};
	case 26:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.35,0]]; 
	};
	case 27:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.3625,0]]; 
	};
	case 28:
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.3875,0]]; 
	};
	case 29:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.4,0]]; 
	};
	case 30:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.4125,0]]; 
	};
	case 31:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.425,0]]; 
	};
	case 32:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.4375,0]]; 
	};
	case 33:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.45,0]]; 
	};
	case 34:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.4625,0]]; 
	};
	case 35:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.4875,0]]; 
	};
	case 36:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.5,0]]; 
	};
	case 37:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.5125,0]]; 
	};
	case 38:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.525,0]]; 
	};
	case 39:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.5375,0]]; 
	};
	case 40:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.55,0]]; 
	};
	case 41:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.5625,0]]; 
	};
	case 42:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.5875,0]]; 
	};
	case 43:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.6,0]]; 
	};
	case 44:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.6125,0]]; 
	};
	case 45:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.625,0]]; 
	};
	case 46:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.6375,0]]; 
	};
	case 47:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.65,0]]; 
	};
	case 48:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.6625,0]]; 
	};
	case 49:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.6875,0]]; 
	};
	case 50:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.7,0]]; 
	};
	case 51:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.7125,0]]; 
	};
	case 52:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.725,0]]; 
	};
	case 53:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.7375,0]]; 
	};
	case 54:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.75,0]]; 
	};
	case 55:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.7625,0]]; 
	};
	case 56:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.7875,0]]; 
	};
	case 57:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.8,0]]; 
	};
	case 58:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.8125,0]]; 
	};
	case 59:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.825,0]]; 
	};
	case 60:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.8375,0]]; 
	};
	case 61:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.85,0]]; 
	};
	case 62:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.8625,0]]; 
	};
	case 63:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.8875,0]]; 
	};
	case 64:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.9,0]]; 
	};
	case 65:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.9125,0]]; 
	};
	case 66:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.925,0]]; 
	};
	case 67:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.9375,0]]; 
	};
	case 68:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.95,0]]; 
	};
	case 69:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.9625,0]]; 
	};
	case 70:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,0.9875,0]]; 
	};
	case 71:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 72:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 73:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 74:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 75:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 76:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 77:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 78:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 79:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 80:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};
	case 100:	
	{ 
		admPpFarbwahrnehmung ppEffectAdjust [1, 1, 0, [], [], [1,1,1,0]]; 
	};

	
    default { hint "default" };
	};