admVarAtemluftInLiter = 1800;	
admVarFlaschenVolumen = 6;
admVarFlaschendruckInBar = 300;
admVarProzentSauerstoff = 0.21;
admVarProzentStickstoff = 0.44;
admVarProzentHelium = 0.35;
admVarTaucherOhneLuft = 0;
player removeItem "adm_item_cylinder_1btl_6ltr_300bar_Tx2135";
playSound "adm_sound_zischen";
hint "Filled rebreather using one single 6l bottle, filled with 300bar of Tx21/35.";
player addItem "adm_item_cylinder_1btl_6ltr_empty";