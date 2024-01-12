soul_bottomxpos = 0
soul_topxpos = 0
soul_ypos = 0
fightselected = 0
actselected = 0
acting = 0
itemselected = 0
itempage = 0
itemchosen = 0
bottomrightpos = 0
mercyselected = 0
deathincreased = 0
if (!instance_exists(obj_nobody_room))
{
    with (instance_create(0, 0, obj_text_box_battle))
    {
        MAXSTR = 0
        STR[0] = global.battleapproachstring
    }
}
else
    instance_create(0, 0, obj_nobody_textbox)
scr_random_encounter_variables()
scr_battlevariables()

