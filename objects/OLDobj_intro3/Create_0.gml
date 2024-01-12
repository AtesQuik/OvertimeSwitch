progress = 0
image_index = 0
image_speed = 0
blackness = 0
pany = 0
nomore = 0
if (global.pyroprogress > 0)
{
    if (global.pyroprogress == 1)
    {
        crashed = 1
        alarm[1] = 150
    }
    if (global.pyroprogress == 2)
        room_goto(rm_pl_pyro_intro)
    if (global.pyroprogress > 2)
        room_goto(rm_pl_pyro_intro2)
}
else
{
    crashed = 0
    alarm[0] = 210
}
STR[0] = "For years, two rivals#ruled over Earth:#RED and BLU."
STR[1] = "Their leaders, the#Mann brothers, hired#8 mercenaries each."
STR[2] = "Hired to fight in the#Badlands, USA for#global domination."
STR[3] = "Miss Pauling, travel to#the Badlands and terminate#the Mann brothers."
STR[4] = "Otherwise, you're fired."
STR[5] = "THUNDERMOUNTAIN#196X"
STR[6] = "Whatever happens to#the mercenaries does#not matter."
STR[7] = "This is message Nr. 8."
STR[8] = "This is message Nr. 9."
STR[9] = "This is message Nr. 10."
N = 0
POS = 0
CSTR = STR[N]
MAXSTR = 9
voicenow = 0
dontplay = 0
global.textboxon = 1
fontcolor = 65280
fontname = 1
textvoice = 80
action_set_alarm(2700, 10)

