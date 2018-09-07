/*
 	Name: adm_BuddyBreathingZiel
 	
 	Author(s):
		[ST10] Max

 	Description:
		Wird ausgeführt, wenn Spieler der Geber von Buddy Breathing ist. Setzt seinen Luftverbrauch auf das Doppelte und gewährt dem Spieler volle Bewegungsfreiheit.
	
	Parameters:
		Nothing
 	
 	Returns:
		Nothing
 	
 	Example:
		Nothing
*/
sleep 1;

//Loope das Skript
while {true} do {
	//Während der Spieler gekoppelt ist, 
	if (admVarBuddyBreathingImGang == TRUE) then 
	{
		//Verdoppele Luftverbrauch des Gebers
		admVarLuftverbrauch = admVarLuftverbrauch * 2;
		//Gebe addAction um BB zu beenden.
		_actionID = player addAction ["Beende Buddy Breathing", "adm_BuddyBreathingBeenden.sqf"]
	}
	//Ist der Spieler nicht gekoppelt, stelle Ursprung wieder her.
	else
	{
		admVarAtemluftInLiter = admVarAtemluftInLiter;
		player removeAction _actionID;
	};
};