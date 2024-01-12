if (global.bleeding == 1 && bleedprogress == 0)
{
    bleedprogress = 1
    alarm[0] = 30
}
if (!instance_exists(obj_soul_battle_select))
{
    if (global.playerhealth > global.fullhealth)
        global.playerhealth = global.fullhealth
    if (global.playerhealth <= 0)
    {
        global.playerhealth = 0
        if (deathincreased == 0)
        {
            deathincreased = 1
            global.timesdied += 1
            if instance_exists(obj_dell_battle)
                global.delltimesdied += 1
            if instance_exists(obj_mbm_dell_intro)
                global.delltimesdied += 1
        }
        instance_create(global.soulxposition, global.soulyposition, obj_battle_death)
        room_goto(rm_gameover)
    }
}

