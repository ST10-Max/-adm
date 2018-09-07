// WIP
sleep 1;

//Loope das Skript
while {true} do {
	//Während der Spieler gekoppelt ist, 
	if (admVarBuddyBreathingImGang == TRUE) then 
	{
		//Setze eigenen Luftverbrauch auf Null, indem die verbrauchte Luft hier addiert wird und im Hauptskript subtrahiert wird.
		admVarAtemluftInLiter = (admVarAtemluftInLiter + admVarLuftverbrauch);
		//Schalte Input aus
		player enableSimulation false;
		//Gebe addAction um BB zu beenden.
		_actionID = player addAction ["Beende Buddy Breathing", "adm_BuddyBreathingBeenden.sqf"]
	}
	//Ist der Spieler nicht gekoppelt, stelle Ursprung wieder her.
	else
	{
		admVarAtemluftInLiter = admVarAtemluftInLiter;
		player enableSimulation true;
		player removeAction _actionID;
	};
};
