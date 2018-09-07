//Variableninitialisierung Start
//GUI
admVarDiveComputerVisible = 0;
//PPEffect
admPpFarbwahrnehmung = ppEffectCreate ["colorCorrections", 1001];
admPpFarbwahrnehmung ppEffectEnable true;
admPpFarbwahrnehmung ppEffectCommit 0;
//Grundlegend
admVarAtemluftInLiter = 6;
admVarFlaschenVolumen = 6;
admVarFlaschenDruckInBar = 1;
admVarTauchtiefe = 0;
admVarUmgebungsdruck = 1;
admVarLuftverbrauch = 1;
admVarTauchzeitVerbleibend = 0;
admVarTauchzeitVergangen = 0;
_admVarAtemvolumenProMinute = 7.5;
//Atemgase
admVarProzentSauerstoff = 0.21;
admVarProzentStickstoff = 0.79;
admVarProzentHelium = 0;
admVarMaximalErlaubteTiefe = 0;
admVarPartialdruckSauerstoff = 0.21;
admVarPartialdruckStickstoff = 0.78;
admVarPartialdruckHelium = 0;
//Deko
_admVarDekoNotwendig = 0;
_admVarTiefeAktuell = 0;
_admVarTiefeAlt = 0;
admVarDekozeit = 0;
admVarUmgebungsdruckFuerDekostop = 0;
admVarNullzeit = 10;
admVarTiefeBisDekostop = 0;
_admVarMacheDekostop = 0;
admVarAuftauchrate = 0;
//Effektcounter
admVarSchmerzen = 0;
_admVarStickstoffvergiftungCounter = 10;
_admVarSauerstoffvergiftungCounter = 10;
_admVarDekovergiftungCounter = 10;
_admVarTaucherOhneLuft = 0;
//Warnungen
admVarWarnungN2 = "";
admVarWarnungO2 = "";
admVarWarnungAsc = "";
_admVarAscCountdown = 10;
admVarWarnungFlaschendruck = "";
admVarWarnungDeko = "";
//Variableninitialisierung Ende



	//Flaschen und Tauchcomputer hinzufügen	
	_admVarNullGear = [] execVM "adm_core\scripts\adm_EquipmentInit.sqf";	
	//Endlosschleife starten
    while {true} do {

    //Pausiere Schleife, bis der Spieler den Modrebreather trägt
    waitUntil {vest player == "adm_item_rebreather"};     
    
	//Ist der Spieler unter Wasser, beginne Hauptscript
    if (underwater player) then
            {	//Ist der Spieler unter Wasser und trägt die Modbrille, wechsle zu Vanillabrille
				if (goggles player == "adm_item_goggles" ) then
				{
					removeGoggles player;
					player addGoggles "G_B_Diving";
				};
			//"Sprintet" der Spieler, erhöhe Luftverbrauch
            if ((speed player) > 9) then
            {
				_admVarAtemvolumenProMinute = 25;
            }
            else
            {
				_admVarAtemvolumenProMinute = 15;
			};
			//Allgemeine Tauchberechnungen wie Drücke, Luftverbrauch, ect pp.
			admVarLuftverbrauch = admVarUmgebungsdruck * (_admVarAtemvolumenProMinute/60);
            admVarAtemluftInLiter = (admVarAtemluftInLiter - admVarLuftverbrauch);
            admVarTauchzeitVergangen = admVarTauchzeitVergangen + 1;
            admVarTauchtiefe = (((getPosASL player) select 2) * (- 1));
            admVarUmgebungsdruck = ((admVarTauchtiefe / 10) + 1);          
            admVarFlaschenDruckInBar = admVarAtemluftInLiter / admVarFlaschenVolumen;
            admVarTauchzeitVerbleibend = ((admVarAtemluftInLiter / admVarLuftverbrauch));
            _admVarTiefeAktuell = (((getPosASL player) select 2) * -1);
            admVarPartialdruckStickstoff = admVarProzentStickstoff * admVarUmgebungsdruck;
            admVarPartialdruckHelium = admVarProzentHelium * admVarUmgebungsdruck;
            admVarPartialdruckSauerstoff = admVarProzentSauerstoff * admVarUmgebungsdruck;
            admVarMaximalErlaubteTiefe = ((1.4/admVarProzentSauerstoff) -1) *10;			
            sleep 1;           
            _admVarTiefeAlt = (((getPosASL player) select 2) * -1);    
            admVarAuftauchrate = _admVarTiefeAktuell - _admVarTiefeAlt;                   
			admVarTiefeBisDekostop = admVarTauchtiefe - admVarDekotiefe;
			//Starte Dekoberechnungsskript
			_admVarNullDeko = [] execVM "adm_core\scripts\adm_Dekompression.sqf";	
           
            //Ist die Nullzeit abgelaufen, und hat der Spieler keinen Deko gemacht, ist Deko notwendig
            if((admVarDekozeit > 1) && (_admVarMacheDekostop == 0)) then
            {                         
			_admVarDekoNotwendig = 1;
			_admVarMacheDekostop = 1;
            };
           
            // Ist der Spieler in Decotiefennähe, starte Deco
            if ((_admVarDekoNotwendig == 1) && !(admVarTiefeBisDekostop > 2) && !(admVarTiefeBisDekostop < -2)) then
            {
                admVarDekozeit = admVarDekozeit - 1;
            };       			
           
            //Ist der Dekocountdown kleiner gleich 0, ist Deco fertig
            if(admVarDekozeit < 0) then
            {
                admVarDekozeit = 0;
                admVarUmgebungsdruckFuerDekostop = 0;
                _admVarMacheDekostop = 0;
            };
            //Verringere Sauerstoffvergiftungszähler, wenn der Spieler tiefer als erlaubt taucht                           
 /*           if (admVarTauchtiefe > admVarMaximalErlaubteTiefe) then
            {
				admVarWarnungO2 = "!ppO2!";
				playSound "adm_sound_beep";
				_admVarSauerstoffvergiftungCounter = _admVarSauerstoffvergiftungCounter - 1;
				//Erreicht der Counter 0, beginne Sauerstoffvergiftung.sqf. Sonst auf 10.				
				if (_admVarSauerstoffvergiftungCounter == 0) then
				{
					_nullSauerstoffvergiftung = ["true", "true"] execVM "adm_core\scripts\effects\adm_Sauerstoffvergiftung.sqf";			
					_admVarSauerstoffvergiftungCounter = 2;
				};

			}
			else
			{
				admVarWarnungO2 = "";
				_admVarSauerstoffvergiftungCounter = 10;
			};		
            //Füge Schmerzen zu, wenn der Spieler ohne Deko schneller as 1 m/s steigt
            if ((admVarDekozeit > 0) && (admVarAuftauchrate > 1)) then             
            {   
				admVarWarnungAsc = "!ASC RATE!";
				playSound "adm_sound_beep";
				_admVarAscCountdown = _admVarAscCountdown - 1;
					if (_admVarAscCountdown == 0) then
					{
						admVarSchmerzen = player getVariable "ACE_medical_pain";
						[player, admVarSchmerzen + 0.1] call ace_medical_fnc_adjustPainLevel;
						_admVarAscCountdown = 5;
					};
            }
			else
			{
				admVarWarnungAsc = "";
				_admVarAscCountdown = 10;
			};

            //Verringere Dekovergiftungszähler, wenn Spieler Deko nicht einhält
            if ((_admVarDekoNotwendig == 1) && (admVarUmgebungsdruck < (admVarUmgebungsdruckFuerDekostop - 2.5))) then
            {
				_admVarDekovergiftungCounter = _admVarDekovergiftungCounter - 1;
				admVarWarnungDeko = "!DECO!";
				playSound "adm_sound_beep";
				//Erreicht der Counter 0, beginne Dekovergiftung.sqf. Sonst nicht	
				if (_admVarDekovergiftungCounter == 0) then
					{
						_nullDekovergiftung = ["true", "true"] execVM "adm_core\scripts\effects\adm_Dekovergiftung.sqf";					
						_admVarDekovergiftungCounter = 2;
					};
            }
			else
			{
				admVarWarnungDeko = "";
				_admVarDekovergiftungCounter = 10;
			};
            //Verringere Stickstoffvergiftungszähler, wenn der Spieler einen Tiefenrausch hat  
            if (admVarPartialdruckStickstoff > 3.5 ) then
            {
				admVarWarnungN2 = "!ppN2!";
				playSound "adm_sound_beep";
				_admVarStickstoffvergiftungCounter = _admVarStickstoffvergiftungCounter - 1;
				//Erreicht der Counter 0, beginne Stickstoffvergiftung.sqf. Sonst nicht.
				if (_admVarStickstoffvergiftungCounter == 0) then
					{
						_nullStickstoff = ["true", "true"] execVM "adm_core\scripts\effects\adm_Stickstoffvergiftung.sqf";					
						_admVarStickstoffvergiftungCounter = 2;
					};					
			}
			else
			{
				admVarWarnungN2 = "";
				_admVarStickstoffvergiftungCounter = 10;
			};
*/
			//Ist unter 50bar in der Flasche, zeige Warnung an
			if (admVarFlaschenDruckInBar < 50) then
			{
				admVarWarnungFlaschendruck = "!LOW AIR!";
				playSound "adm_sound_beep";
			}
			else
			{
				admVarWarnungFlaschendruck = "";
			};
            //Hat der Spieler keine Luft mehr in der Flasche, erhöhe den Zähler
            if (admVarFlaschenDruckInBar == 0) then
            {
                _admVarTaucherOhneLuft = _admVarTaucherOhneLuft + 1;
            }; 
            //Hat der Spieler seit 3min keine Luft mehr, töte Spieler
            if (_admVarTaucherOhneLuft == 180) then
            {
                player setDamage 1;
            }; 
			hintsilent format ["Nullzeit: %1, Dekotiefe: %2, Dekozeit: %3",admVarNullzeit,admVarDekotiefe,admVarDekozeit];  
   
    }
    else
    {           //Ist der Spieler nichtmehr unter Wasser:
					//Ersetze Vanillataucherbrille mit Modbrille
				if (goggles player == "G_B_Diving" ) then
					{
						removeGoggles player;
						player addGoggles "adm_item_goggles";
					};
					//Setzte wichtigste Variablen auf Ursprung
				admVarTauchtiefe = 0;
				admVarUmgebungsdruck = 1;				
                admVarDekozeit = 0;
				admVarUmgebungsdruck = ((admVarTauchtiefe / 10) + 1); 
                admVarUmgebungsdruckFuerDekostop = 0;
				admVarDekotiefe = 0;
				_admVarDekoNotwendig = 0;
                _admVarMacheDekostop = 0;
                _admVarTaucherOhneLuft = 0;
				_admVarStickstoffvergiftungCounter = 10;
				_admVarSauerstoffvergiftungCounter = 10;
				_admVarDekovergiftungCounter = 10;
				admVarWarnungN2 = "";
				admVarWarnungO2 = "";
				admVarWarnungAsc = "";
				_admVarAscCountdown = 10;
				admVarWarnungFlaschendruck = "";
				admVarWarnungDeko = "";
				//Beende Farbwahrnehmungsänderung
				admPpFarbwahrnehmung ppEffectEnable false;
				ppEffectDestroy admPpFarbwahrnehmung;
               
    };         
 };