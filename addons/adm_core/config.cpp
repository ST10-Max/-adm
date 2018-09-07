class CfgPatches
{
		class adm
		{
			units[] = {""};
			weapons[] = {""};
			requiredVersion = 1.0;
			requiredAddons[] = {"Extended_EventHandlers"};
		};	
};
class Extended_PostInit_EventHandlers
{
		adm_post_init = "adm_var_post_init_nil = [] execVM ""\adm_core\scripts\adm_modstart.sqf""";
};

#include "\adm_core\scripts\dialog\defines.hpp"

class RscTitles {
#include "\adm_core\scripts\dialog\Tauchcomputer.hpp"
};
//Taucherbrille
class cfgGlasses {
class None;

class adm_item_goggles : None 
	{
	author = "[ADM]";
	scope = 2;
	ace_color[] = {0, 0, -1};  // Post-proccess color
    ace_tintAmount = 0;  // Amount of tint applied to the color
    ace_resistance = 1;  // Resistance to breaking (0 or 1 or 2)
    ace_protection = 0;  // Provides protection (0-no, 1-yes)
	ACE_Overlay = "\z\ace\addons\goggles\textures\HUD\DivingGoggles.paa";
	ACE_OverlayCracked = "\z\ace\addons\goggles\textures\HUD\DivingGogglesCracked.paa";
	model = "\A3\characters_f\Heads\glasses\g_diving";
	displayName = "Diving Goggles (ADM)";
	descriptionShort="Shockproof diving goggles";
	picture = "\A3\characters_F\data\ui\icon_G_Diving_CA.paa";
	identityTypes[] = {"NoGlasses",300};
	mass = 1;
	};
};
class cfgVehicles
{
//Schwarzer Rucksack für Equipment
    class B_Carryall_khk;
    class adm_item_bag: B_Carryall_khk
    {
        scope = 2;
        model = "\A3\weapons_f\Ammoboxes\bags\Backpack_Tortila";
        displayName = "Diving Bag (ADM)";
		descriptionShort = "1000D Cordura backpack for transporting the divers equipment"
		author = "[ADM]";
        picture = "\A3\weapons_f\ammoboxes\bags\data\ui\icon_B_C_Tortila_blk.paa";
        hiddenSelectionsTextures[]={"\A3\weapons_f\ammoboxes\bags\data\backpack_tortila_blk_co.paa"};
        maximumLoad = 500;
        mass = 5;
    };
};
class cfgWeapons
{
	class ItemCore;
	class InventoryItem_Base_F;
    class VestItem;
	class V_RebreatherB;
//Atemgerät
	class adm_item_rebreather: V_RebreatherB
	{
		scope = 2;
		nameSound = "";
		displayName = "Rebreather(ADM)";
		descriptionShort="Milspec rebreather for various gases";
		author = "[ADM]";
		picture = "\A3\characters_f\Data\UI\icon_V_RebreatherB_CA.paa";
		model = "\A3\Characters_F\Common\equip_rebreather";
		hiddenSelections[] = {"camo"};
		hiddenSelectionsTextures[] = {"\A3\characters_f\common\data\diver_equip_nato_co.paa","\A3\characters_f\common\data\diver_equip_nato_co.paa","\A3\characters_f\data\visors_ca.paa"};
		hiddenUnderwaterSelections[] = {"hide"};
		hiddenUnderwaterSelectionsTextures[] = {"\A3\characters_f\data\visors_ca.paa"};
		class ItemInfo: VestItem
		{
			uniformModel = "\A3\Characters_F\Common\equip_rebreather";
			vestType = "Rebreather";
			containerClass = "Supply100";
			mass = 10;
			armor = "5*0.2";
			passThrough = 0.8;
			hiddenSelections[] = {"camo"};
		};
	};	
//Neoprenanzug
	class U_B_Wetsuit;
	
	class adm_item_wetsuit: U_B_Wetsuit
	{
		displayName = "Wetsuit (ADM)";
		descriptionShort="All weather wetsuit";
		author = "[ADM]";
		scope = 2;
	}
	class adm_ItemCore: ItemCore
	{
		type = 131072;
		detectRange = 0;
		simulation = "ItemMineDetector";
	};
//Tauchcomputer	
	class ItemGPS;
	class adm_item_DiveComputer: ItemGPS
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		picture = "\adm_core\data\icons\adm_icon_DiveComputer.paa";
		displayName = "Dive Buddy H3";
		descriptionShort="Wrist mounted, battery powered dive computer. Shows useful and important data to the diver.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 1;
		};
	};	
//Tauchflasche 1Flasche 6ltr 300bar Pressluft
	class adm_item_cylinder_1btl_6ltr_300bar_compressedAir: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(compressed air)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of compressed, dried and filtered air.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Pressluft	
	class adm_item_cylinder_2btl_6ltr_300bar_compressedAir: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(compressed air)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of compressed, dried and filtered air.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar EAN28
	class adm_item_cylinder_1btl_6ltr_300bar_EAN28: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(EAN28)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Enriched Air Nitrox 28.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar EAN28	
	class adm_item_cylinder_2btl_6ltr_300bar_EAN28: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(EAN28)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Enriched Air Nitrox 28.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar EAN32
	class adm_item_cylinder_1btl_6ltr_300bar_EAN32: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(EAN32)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Enriched Air Nitrox 32.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar EAN32	
	class adm_item_cylinder_2btl_6ltr_300bar_EAN32: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(EAN32)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Enriched Air Nitrox 32.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar EAN36
	class adm_item_cylinder_1btl_6ltr_300bar_EAN36: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(EAN36)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Enriched Air Nitrox 36.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar EAN36	
	class adm_item_cylinder_2btl_6ltr_300bar_EAN36: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(EAN36)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Enriched Air Nitrox 36.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar EAN40
	class adm_item_cylinder_1btl_6ltr_300bar_EAN40: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(EAN40)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Enriched Air Nitrox 40.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar EAN40	
	class adm_item_cylinder_2btl_6ltr_300bar_EAN40: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(EAN40)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Enriched Air Nitrox 40.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Heliox85
	class adm_item_cylinder_1btl_6ltr_300bar_Heliox85: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Heliox 8.5)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Heliox 8.5.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Heliox85	
	class adm_item_cylinder_2btl_6ltr_300bar_Heliox85: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Heliox 8.5)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Heliox 8.5.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Heliox12
	class adm_item_cylinder_1btl_6ltr_300bar_Heliox12: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Heliox 12)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Heliox 12.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Heliox12	
	class adm_item_cylinder_2btl_6ltr_300bar_Heliox12: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Heliox 12)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Heliox 12.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Heliox21
	class adm_item_cylinder_1btl_6ltr_300bar_Heliox21: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Heliox 21)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Heliox 21.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Heliox21	
	class adm_item_cylinder_2btl_6ltr_300bar_Heliox21: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Heliox 21)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Heliox 21.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Tx2135
	class adm_item_cylinder_1btl_6ltr_300bar_Tx2135: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Tx21/35)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Tx21/35.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Tx2135	
	class adm_item_cylinder_2btl_6ltr_300bar_Tx2135: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Tx21/35)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Tx21/35.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Tx1845
	class adm_item_cylinder_1btl_6ltr_300bar_Tx1845: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Tx18/45)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Tx18/45.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Tx1845	
	class adm_item_cylinder_2btl_6ltr_300bar_Tx1845: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Tx18/45)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Tx18/45.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Tx1555
	class adm_item_cylinder_1btl_6ltr_300bar_Tx1555: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Tx15/55)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Tx15/55.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Tx1555
	class adm_item_cylinder_2btl_6ltr_300bar_Tx1555: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Tx15/55)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Tx15/55.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Tx1265
	class adm_item_cylinder_1btl_6ltr_300bar_Tx1265: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Tx12/65)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Tx12/65.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Tx1265
	class adm_item_cylinder_2btl_6ltr_300bar_Tx1265: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Tx12/65)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Tx12/65.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr 300bar Tx1070
	class adm_item_cylinder_1btl_6ltr_300bar_Tx1070: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(Tx10/70)";
		descriptionShort="One 6 liter diving bottle filled with 300bar of Tx10/70.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 10;
		};
	};	
//Tauchflasche 2Flaschen 6ltr 300bar Tx1070
	class adm_item_cylinder_2btl_6ltr_300bar_Tx1070: adm_ItemCore
	{
		author = "[ADM]";
		scope = 2;
		scopeArsenal = 2;
		scopeCurator = 2;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(Tx10/70)";
		descriptionShort="Two linked 6 liter diving bottles filled with 300bar of Tx10/70.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 20;
		};
	};
//Tauchflasche 1Flasche 6ltr leer
	class adm_item_cylinder_1btl_6ltr_empty: adm_ItemCore
	{
		author = "[ADM]";
		scope = 1;
		scopeArsenal = 1;
		scopeCurator = 1;
		model="\adm_core\data\models\SingleBottle";
		picture = "\adm_core\data\icons\adm_icon_SingleTank.paa";
		displayName = "Single 6l bottle(empty)";
		descriptionShort="One empty 6 liter diving bottle.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 8;
		};
	};
//Tauchflasche 2Flaschen 6ltr leer
	class adm_item_cylinder_2btl_6ltr_empty: adm_ItemCore
	{
		author = "[ADM]";
		scope = 1;
		scopeArsenal = 1;
		scopeCurator = 1;
		model="\adm_core\data\models\DoubleBottle";
		picture = "\adm_core\data\icons\adm_icon_DoubleTank.paa";
		displayName = "Double 6l bottles(empty)";
		descriptionShort="Two linked empty 6 liter diving bottles.";
		class ItemInfo: InventoryItem_Base_F
		{
			mass = 16;
		};
	};
};

class CfgSounds
{
	sounds[] = {};
	class adm_sound_zischen
	{
		name = "Zischen";
		sound[] = {"adm_core\data\sounds\zischen.ogg", 1, 1};
		titles[] = {};
	};
	class adm_sound_beep
	{
		name = "Beep";
		sound[] = {"adm_core\data\sounds\beep.ogg", 1, 1};
		titles[] = {};
	};
};