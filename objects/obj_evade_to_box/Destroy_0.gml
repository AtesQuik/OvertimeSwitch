global.battlemenuoffline = 0
with (obj_soul_battle_select)
{
    soul_ypos = 0
    fightselected = 0
    actselected = 0
    acting = 0
    itemselected = 0
    mercyselected = 0
    global.showhealthbars = 0
    if (!instance_exists(obj_text_box_battle))
    {
        instance_create(0, 0, obj_text_box_battle)
        with (obj_text_box_battle)
        {
            MAXSTR = 0
            STR[0] = global.battleapproachstring
        }
    }
}

