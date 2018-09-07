//Initialitiarisieren
_admVarCompartmentValues = [[1,4,1.2599,0.5050,1.5,1.7435,0.1911],[2,8,1.0000,0.6514,3,1.3838,0.4295],[3,12.5,0.8618,0.7222,4.7,1.1925,0.5446],[4,18.5,0.7562,0.7725,7,1.0465,0.6265],[5,27,0.6667,0.8125,10.2,0.9226,0.6917],[6,38.3,0.5933,0.8434,14.5,0.8211,0.7420],[7,54.3,0.5282,0.8693,20.5,0.7309,0.7841],[8,77,0.4701,0.8910,29.1,0.6506,0.8195],[9,109,0.4187,0.9092,41.1,0.5794,0.8491],[10,146,0.3798,0.9222,55.1,0.5256,0.8703],[11,187,0.3497,0.9319,70.6,0.4840,0.8860],[12,239,0.3223,0.9403,90.2,0.4460,0.8997],[13,305,0.2971,0.9477,115.1,0.4112,0.9188],[14,390,0.2737,0.9544,147.2,0.3788,0.9226],[15,498,0.2523,0.9602,187.9,0.3492,0.9321],[16,635,0.2327,0.9653,239.6,0.3220,0.9404]];
_admVarWasserdampfdruck = 0.063;
_admVarRespiratorischerQuotient = 0.8;
_admVarDeltaPCO2 = 0.0534;
_admVarGewebeStickstoffInspiratorisch = 0;
_admVarGewebeStickstoffEndeExposition = 0;
_admVarGewebeHeliumdruckInspiratorisch = 0;
_admVarGewebeHeliumdruckEndeExposition = 0;
_admVarGewebeInertgasdruckInspiratorisch = 0;
_admVarGewebeInertgasdruckBeginnExposition = 0;
_admVarGewebeInertgasdruckEndeExposition = 0;
_admVarVebleibendeNullzeitStickstoff = 10;
_admVarVebleibendeNullzeitHelium = 10;

				//STart --- For each 16 arrays do 
{
_admVarCompartmentValues = _admVarCompartmentValues select _x;


//Nehme jeweilige HAlbzeitN2, HAlbzeitHE, _admVarStickstoffAFaktor, _admVarStickstoffBFaktor, _admVarHeliumAFaktor, _admVarHeliumBFaktor
//Lese aus Array aus:
_admVarHalflifeN2 = _admVarCompartmentValues select _x select 1);
_admVarStickstoffAFaktor = _admVarCompartmentValues select _x select 2);
_admVarStickstoffBFaktor = _admVarCompartmentValues select _x select 3);
_admVarHalflifeHe = _admVarCompartmentValues select _x select 4);
_admVarHeliumAFaktor = _admVarCompartmentValues select _x select 5);
_admVarHeliumBFaktor =  _admVarCompartmentValues select _x select 6);
//Berechne Stickstoffbelastung
_admVarGewebeStickstoffInspiratorisch = (admVarUmgebungsdruck - _admVarWasserdampfdruck + ((1 - _admVarRespiratorischerQuotient)/_admVarRespiratorischerQuotient) * _admVarDeltaPCO2) * _admVarInertgasanteil;
_admVarGewebeStickstoffBeginnExposition = _admVarGewebeStickstoffEndeExposition + _admVarGewebeStickstoffInspiratorisch;
_admVarGewebeStickstoffEndeExposition = _admVarGewebeStickstoffBeginnExposition + (_admVarGewebeStickstoffInspiratorisch - _admVarGewebeStickstoffBeginnExposition) * (1 - 2^-(_admVarIntervallzeitInMinuten/_admVarHalbwaertszeitDesKompartiments));

_admVarTolerierterUmgebungsdruckFuerEinGewebeStickstoff = (_admVarGewebeStickstoffEndeExposition - _admVarStickstoffAFaktor) * _admVarStickstoffBFaktor;


//Berechne Heliumbelastung
_admVarGewebeHeliumdruckInspiratorisch = (admVarUmgebungsdruck - _admVarWasserdampfdruck + ((1 - _admVarRespiratorischerQuotient)/_admVarRespiratorischerQuotient) * _admVarDeltaPCO2) * _admVarInertgasanteil;
_admVarGewebeHeliumBeginnExposition = _admVarGewebeHeliumdruckEndeExposition + _admVarGewebeHeliumdruckInspiratorisch;
_admVarGewebeHeliumdruckEndeExposition = _admVarGewebeHeliumBeginnExposition + (_admVarGewebeHeliumInspiratorisch - _admVarGewebeHeliumBeginnExposition) * (1 - 2^-(_admVarIntervallzeitInMinuten/_admVarHalbwaertszeitDesKompartiments));

_admVarTolerierterUmgebungsdruckFuerEinGewebeHelium = (_admVarGewebeHeliumEndeExposition - _admVarHeliumAFaktor) * _admVarHeliumBFaktor;


//Fasse beide Gase zu einer Gesammtbelastung zusammen
_admVarGewebeInertgasdruckInspiratorisch = _admVarGewebeStickstoffInspiratorisch + _admVarGewebeHeliumdruckInspiratorisch;
_admVarGewebeInertgasdruckBeginnExposition = _admVarGewebeInertgasdruckEndeExposition + _admVarGewebeInertgasdruckInspiratorisch;
_admVarGewebeInertgasdruckEndeExposition = _admVarGewebeStickstoffEndeExposition + _admVarGewebeHeliumdruckEndeExposition;



//Berechne verbleibende Nullzeit des jeweiligen Gases
_admVarVebleibendeNullzeitStickstoff =  - _admVarHalflifeN2  * ((log ((_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasdruckEndeExposition)/(_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasdruckBeginnExposition))) / (log 2)) + _admVarVebleibendeNullzeitStickstoff;
_admVarVebleibendeNullzeitHelium = - _admVarHalflifeHe  * ((log ((_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasdruckEndeExposition)/(_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasdruckBeginnExposition))) / (log 2)) + _admVarVebleibendeNullzeitHelium;



//Mittelwerte aus beiden Gasen Berechnen

_admVarHalflifeStern = ((admVarPartialdruckStickstoff * _admVarHalflifeN2) + (admVarPartialdruckHelium * _admVarHalflifeHe) / (admVarPartialdruckStickstoff + admVarPartialdruckHelium));
_admVarAFaktorStern = ((admVarPartialdruckStickstoff * _admVarStickstoffAFaktor) + (admVarPartialdruckHelium * _admVarHeliumAFaktor) / (admVarPartialdruckStickstoff + admVarPartialdruckHelium));
_admVarBFaktorStern = ((admVarPartialdruckStickstoff * _admVarStickstoffBFaktor) + (admVarPartialdruckHelium * _admVarHeliumBFaktor) / (admVarPartialdruckStickstoff + admVarPartialdruckHelium));
//Gewebeinertgasdruck zu Beginn der notwendigen Dekpmpression WIP
_admVarGewebeInertgasueberdruck = _admVarGewebeInertgasueberdruck + ((admVarUmgebungsdruck - 0.3) / _admVarBFaktorStern) + _admVarAFaktorStern;
_admVarUmgebungsdruckFuerDekostop = _admVarUmgebungsdruckFuerDekostop + (admVarUmgebungsdruck - _admVarAFaktorStern) * _admVarBFaktorStern;
if (_admVarBerechneteNullzeit == 0) then
	{
		admVarUmgebungsdruckFuerDekostop = ((admVarUmgebungsdruck - _admVarAFaktorStern) * _admVarBFaktorStern);
		_admVarBerechneteDekozeit = ( - _admVarHalflifeN2  * ((log ((_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasueberdruck)/(_admVarGewebeInertgasdruckInspiratorisch - _admVarGewebeInertgasdruckBeginnExposition))) / (log 2)));  
		admVarNullzeit = _admVarBerechneteNullzeit;
		admVarDekozeit = _admVarBerechneteDekozeit;
		admVarDekotiefe = admVarUmgebungsdruckFuerDekostop;
	
	};
				//Ende ---For each schleife ?
} forEach (_admVarCompartmentValues select 0);