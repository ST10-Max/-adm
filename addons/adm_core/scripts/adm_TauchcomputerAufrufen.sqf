	if (admVarDiveComputerVisible == 0) then {
		admVarDiveComputerVisible = 1;
		while {admVarDiveComputerVisible == 1} do {
			if ("adm_item_DiveComputer" in assignedItems player) then
			{
			disableSerialization;
			titleRsc ["Tauchcomputer_Dialog","PLAIN"];
			_admVarDialog = uiNamespace getVariable 'Tauchcomputer_Dialog';
			if ((dayTime >6 ) && (dayTime <18)) then
				{
				(_admVarDialog displayCtrl 1110) ctrlSetText "\adm_core\data\textures\TauchcomputerDAY_texture.paa";																//Schalte von 0600-1800 Grün
				}
				else
				{
				(_admVarDialog displayCtrl 1110) ctrlSetText "\adm_core\data\textures\TauchcomputerNIGHT_texture.paa";																//Schalte sonst Rot
				};
			(_admVarDialog displayCtrl 1111) ctrlSetText format["%1", round(admVarFlaschenDruckInBar)];																				//Flaschendruck
			(_admVarDialog displayCtrl 1112) ctrlSetText format["%1",(round(admVarUmgebungsdruck *10))/10];																			//Umgebungsdruck
			(_admVarDialog displayCtrl 1113) ctrlSetText format["%1",round(round(admVarTauchtiefe *10))/10];																		//Tiefe
			(_admVarDialog displayCtrl 1114) ctrlSetText format["%1",(round(admVarAuftauchrate *10))/10];																			//ASC	
			(_admVarDialog displayCtrl 1115) ctrlSetText format["%1",[admVarTauchzeitVergangen,"MM:SS"] call bis_fnc_secondstostring];												//DT
			(_admVarDialog displayCtrl 1116) ctrlSetText format["%1",[admVarTauchzeitVerbleibend,"MM:SS"] call bis_fnc_secondstostring];											//RDT
			(_admVarDialog displayCtrl 1117) ctrlSetText format["%1", (round(admVarDekotiefe *10))/10];																				//DecoAt
			(_admVarDialog displayCtrl 1118) ctrlSetText format["%1", (round(admVarDekozeit *10))/10];																				//DecoFor
//			(_admVarDialog displayCtrl 1119) ctrlSetText format["%1", (round(admVarDeepstopTiefe *10))/10];																			//DeepAt
//			(_admVarDialog displayCtrl 1120) ctrlSetText format["%1", (round(admVarDeepstopZeit *10))/10];																			//DeepFor
			(_admVarDialog displayCtrl 1121) ctrlSetText format["%1", (round(admVarMaximalErlaubteTiefe *10))/10];																	//MOD
			(_admVarDialog displayCtrl 1122) ctrlSetText format["%1",[daytime,"HH:MM:SS"] call bis_fnc_timetostring];																//Uhrzeit
			(_admVarDialog displayCtrl 1123) ctrlSetText format["%1", round(getDir player)];																						//Kurs
			(_admVarDialog displayCtrl 1124) ctrlSetText format["%1", (round(admVarPartialdruckSauerstoff *10))/10];																//ppO
			(_admVarDialog displayCtrl 1125) ctrlSetText format["%1", (round(admVarPartialdruckStickstoff *10))/10];																//ppN
			(_admVarDialog displayCtrl 1126) ctrlSetText format["%1%2%3%4%5", admVarWarnungN2,admVarWarnungO2,admVarWarnungAsc,admVarWarnungDeko,admVarWarnungFlaschendruck];		//Warnung
			sleep 1;
			}
			else
			{
			};			
		};
	}
	else {
		titleText ["","PLAIN"];
		admVarDiveComputerVisible = 0;
	};

