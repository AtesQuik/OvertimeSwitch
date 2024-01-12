progress = 0
fadeout = 0
extrafade = 0
fadein = 0
lastimage = 0
image_speed = 0
blackness = 0
pan = 0
pany = 0
nomore = 0
countdown = 2700
stopcount = 0
if (global.pyroprogress > 0 && global.pyroprogress < 10)
{
    if (global.pyroprogress == 1)
    {
        image_index = 10
        crashed = 1
    }
    if (global.pyroprogress == 2)
        room_goto(rm_pl_pyro_intro)
    if (global.pyroprogress > 2)
    {
        if (global.pyroprogress >= 9)
            room_goto(rm_pl_finale)
        else
        {
            global.pyroprogress = 3
            room_goto(rm_pl_pyro_intro2)
        }
    }
}
else
{
    crashed = 0
    image_index = 0
}
STR[0] = "For years, two rivals#ruled over Earth:#RED and BLU."
STR[1] = "Their leaders, the#Mann brothers, hired#8 mercenaries each."
STR[2] = "Hired to fight in the#Badlands, USA for#global domination."
STR[3] = "Miss Pauling, travel to#the Badlands and terminate#the Mann brothers."
STR[4] = "Otherwise, you're fired."
STR[5] = "    THUNDERMOUNTAIN#         196X"
STR[6] = "Whatever happens to#the mercenaries does#not matter."
STR[7] = ""
STR[8] = "Their leaders, the#Mann brothers, both#died a painful death"
STR[9] = "This is message Nr. 10."
N = 0
POS = 0
CSTR = STR[N]
MAXSTR = 9
voicenow = 0
dontplay = 0
global.textboxon = 0
fontcolor = 65280
fontname = 1
textvoice = 80
global.timergo = 0

