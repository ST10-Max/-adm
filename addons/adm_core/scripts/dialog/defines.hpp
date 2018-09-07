// Control types
#define CT_STATIC           0

// Static styles
#define ST_PICTURE        0x30
#define ST_CENTER         0x02
#define ST_LEFT           0x00

////////////////
//Base Classes//
////////////////

class Tauchcomputer_RscText
{
    access = 0;
    idc = -1;
    type = CT_STATIC;
    style = ST_LEFT;
    linespacing = 1;
    colorBackground[] = {0,0,0,0};
    colorText[] = {0.3,0.6,0.4,.8};
    text = "";
    shadow = 2;
    font = "EtelkaNarrowMediumPro";
    SizeEx = 0.1;
    fixedWidth = 0;
    x = 0;
    y = 0;
    h = 0;
    w = 0; 
};