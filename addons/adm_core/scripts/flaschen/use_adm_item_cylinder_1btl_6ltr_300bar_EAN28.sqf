admVarAtemluftInLiter = 1800;	
admVarFlaschenVolumen = 6;
admVarFlaschendruckInBar = 300;
admVarProzentSauerstoff = 0.28;
admVarProzentStickstoff = 0.72;
admVarProzentHelium = 0;
admVarTaucherOhneLuft = 0;
player removeItem "adm_item_cylinder_1btl_6ltr_300bar_EAN28";
playSound "adm_sound_zischen";
hint "Filled rebreather using one single 6l bottle, filled with 300bar of EAN28.";
player addItem "adm_item_cylinder_1btl_6ltr_empty";