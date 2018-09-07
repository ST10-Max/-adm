////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
////////////////////////////////////////////////////////////////////////////
class Tauchcomputer_Dialog {
    idd = 1000;
    name = "Tauchcomputer_Dialog";
    movingEnable = false;
    enableSimulation = true;
	onLoad = "uiNamespace setVariable ['Tauchcomputer_Dialog', _this select 0]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	controlsBackground[] = {};
	objects[] = {};

    class controls {
		class Tauchcomputer_Hintergrund: Tauchcomputer_RscText
        {
            idc = 1110;
			type = CT_STATIC;
			style = ST_PICTURE;
			font = puristaLight;
            x = 0.733506 * safezoneW + safezoneX;
            y = 0.668456 * safezoneH + safezoneY;
            w = 0.245833 * safezoneW;
            h = 0.3 * safezoneH;
            ColorBackground[] = {};
            ColorText[] = {};
			text = "";
        };
		class Tauchtabelle_Hintergrund: Tauchcomputer_RscText
        {
            idc = 1500;
			type = CT_STATIC;
			style = ST_PICTURE;
			font = puristaLight;
            x = 0.733506 * safezoneW + safezoneX;
            y = 0.668456 * safezoneH + safezoneY;
            w = 0.245833 * safezoneW;
            h = 0.3 * safezoneH;
            ColorBackground[] = {};
            ColorText[] = {};
			text = "";
        };
        class Tauchcomputer_Time: Tauchcomputer_RscText
        {
            idc = 1122;
            text = "";
            x = 0.792716 * safezoneW + safezoneX;
            y = 0.754656 * safezoneH + safezoneY;
            w = 0.032440 * safezoneW;
            h = 0.022359 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_Kurs: Tauchcomputer_RscText
        {
            idc = 1123;
            text = "";
            x = 0.891228 * safezoneW + safezoneX;
            y = 0.758347 * safezoneH + safezoneY;
            w = 0.046360 * safezoneW;
            h = 0.017937 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_Flaschendruck: Tauchcomputer_RscText
        {
            idc = 1111;
            text = "";
            x = 0.816549 * safezoneW + safezoneX;
            y = 0.779229 * safezoneH + safezoneY;
            w = 0.021616 * safezoneW;
            h = 0.017696 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_Umgebungsdruck: Tauchcomputer_RscText
        {
            idc = 1112;
            text = "";
            x = 0.816812 * safezoneW + safezoneX;
            y = 0.79274 * safezoneH + safezoneY;
            w = 0.021354 * safezoneW;
            h = 0.016222 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_Tiefe: Tauchcomputer_RscText
        {
            idc = 1113;
            text = "";
            x = 0.820198 * safezoneW + safezoneX;
            y = 0.805264 * safezoneH + safezoneY;
            w = 0.021093 * safezoneW;
            h = 0.016723 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,0,1};
			sizeEx = 0.02 * safezoneH;
        };
        class Tauchcomputer_ASC: Tauchcomputer_RscText
        {
            idc = 1114;
            text = "";
            x = 0.808998 * safezoneW + safezoneX;
            y = 0.819025 * safezoneH + safezoneY;
            w = 0.027084 * safezoneW;
            h = 0.018679 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_DT: Tauchcomputer_RscText
        {
            idc = 1115;
            text = "";
            x = 0.806914 * safezoneW + safezoneX;
            y = 0.833519 * safezoneH + safezoneY;
            w = 0.047921 * safezoneW;
            h = 0.01917 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_RDT: Tauchcomputer_RscText
        {
            idc = 1116;
            text = "";
            x = 0.813165 * safezoneW + safezoneX;
            y = 0.848991 * safezoneH + safezoneY;
            w = 0.040107 * safezoneW;
            h = 0.019671 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_ppO: Tauchcomputer_RscText
        {
            idc = 1124;
            text = "";
            x = 0.818988 * safezoneW + safezoneX;
            y = 0.870318 * safezoneH + safezoneY;
            w = 0.021782 * safezoneW;
            h = 0.018289 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_DecoAt: Tauchcomputer_RscText
        {
            idc = 1117;
            text = "";
            x = 0.898073 * safezoneW + safezoneX;
            y = 0.780207 * safezoneH + safezoneY;
            w = 0.020835 * safezoneW;
            h = 0.01574 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_DecoFor: Tauchcomputer_RscText
        {
            idc = 1118;
            text = "";
            x = 0.898204 * safezoneW + safezoneX;
            y = 0.79249 * safezoneH + safezoneY;
            w = 0.020572 * safezoneW;
            h = 0.022618 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_DeepAt: Tauchcomputer_RscText
        {
            idc = 1119;
            text = "";
            x = 0.896836 * safezoneW + safezoneX;
            y = 0.81116 * safezoneH + safezoneY;
            w = 0.021552 * safezoneW;
            h = 0.016723 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_DeepFor: Tauchcomputer_RscText
        {
            idc = 1120;
            text = "";
            x = 0.897034 * safezoneW + safezoneX;
            y = 0.822951 * safezoneH + safezoneY;
            w = 0.021353 * safezoneW;
            h = 0.016723 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_MOD: Tauchcomputer_RscText
        {
            idc = 1121;
            text = "";
            x = 0.882969 * safezoneW + safezoneX;
            y = 0.836708 * safezoneH + safezoneY;
            w = 0.03073 * safezoneW;
            h = 0.016723 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_ppN: Tauchcomputer_RscText
        {
            idc = 1125;
            text = "";
            x = 0.885309 * safezoneW + safezoneX;
            y = 0.870127 * safezoneH + safezoneY;
            w = 0.022399 * safezoneW;
            h = 0.016704 * safezoneH;
			font = puristaLight;
			colorText[] = {255,255,255,1};
			sizeEx = 0.017 * safezoneH;
        };
        class Tauchcomputer_Warnung: Tauchcomputer_RscText
        {
            idc = 1126;
            text = "";
            x = 0.857440 * safezoneW + safezoneX;
            y = 0.849492 * safezoneH + safezoneY;
            w = 0.067720 * safezoneW;
            h = 0.016704 * safezoneH;
			font = puristaLight;
			colorText[] = {255,0,0,1};
			sizeEx = 0.017 * safezoneH;
        };
    };
};