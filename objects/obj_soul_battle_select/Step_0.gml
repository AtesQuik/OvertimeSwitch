var __b__;
__b__ = action_if_variable(global.battlemenuoffline, 0, 0)
if __b__
{
    if (soul_ypos == 0)
    {
        soul_topxpos = 0
        if keyboard_check_pressed(global.rightkey)
        {
            if (instance_exists(obj_misha_battle) || global.playername == "Jacket" || global.playername == "Batter")
            {
                if (soul_bottomxpos < 2)
                {
                    audio_play_sound(snd_battlemenu_move, 1, false)
                    soul_bottomxpos += 1
                }
            }
            else if (soul_bottomxpos < 3)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                soul_bottomxpos += 1
            }
        }
        if keyboard_check_pressed(global.leftkey)
        {
            if (soul_bottomxpos > 0)
            {
                audio_play_sound(snd_battlemenu_move, 1, false)
                soul_bottomxpos -= 1
            }
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            audio_play_sound(snd_battlemenu_select, 1, false)
            soul_ypos = 1
            instance_create(x, y, obj_wait_for_me)
            if instance_exists(obj_text_box_battle)
            {
                with (obj_text_box_battle)
                    instance_destroy()
            }
            if (soul_bottomxpos == 0)
                fightselected = 1
            if (soul_bottomxpos == 1)
                actselected = 1
            if (soul_bottomxpos == 2)
                itemselected = 1
            if (soul_bottomxpos == 3)
                mercyselected = 1
        }
    }
    if (fightselected == 1 && soul_ypos != 0)
    {
        global.showhealthbars = 1
        if (global.enemyamount > 0)
        {
            if keyboard_check_pressed(global.downkey)
            {
                if (soul_ypos < global.enemyamount)
                    soul_ypos += 1
            }
            if keyboard_check_pressed(global.upkey)
            {
                if (soul_ypos > 1)
                    soul_ypos -= 1
            }
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            if (soul_ypos == 1 && global.enemy1down == 0 && global.enemy1spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(144, 0, obj_battle_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                instance_create(x, y, obj_battle_ground)
                global.showhealthbars = 0
                global.battlemenuoffline = 1
            }
            if (soul_ypos == 2 && global.enemy2down == 0 && global.enemy2spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(48, 0, obj_battle_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                instance_create(x, y, obj_battle_ground)
                global.showhealthbars = 0
                global.battlemenuoffline = 1
            }
            if (soul_ypos == 3 && global.enemy3down == 0 && global.enemy3spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(240, 0, obj_battle_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                instance_create(x, y, obj_battle_ground)
                global.showhealthbars = 0
                global.battlemenuoffline = 1
            }
        }
    }
    if (actselected == 1)
    {
        if (global.enemyamount > 0)
        {
            if keyboard_check_pressed(global.downkey)
            {
                if (soul_ypos < global.enemyamount)
                    soul_ypos += 1
            }
            if keyboard_check_pressed(global.upkey)
            {
                if (soul_ypos > 1)
                    soul_ypos -= 1
            }
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            if (soul_ypos == 1 && global.enemy1down == 0 && global.enemy1spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(144, 0, obj_act_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                global.battlemenuoffline = 1
            }
            if (soul_ypos == 2 && global.enemy2down == 0 && global.enemy2spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(48, 0, obj_act_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                global.battlemenuoffline = 1
            }
            if (soul_ypos == 3 && global.enemy3down == 0 && global.enemy3spared == 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(240, 0, obj_act_enemy_select)
                instance_create(x, y, obj_wait_for_me)
                global.battlemenuoffline = 1
            }
        }
    }
    if (itemselected == 1)
    {
        if keyboard_check_pressed(global.rightkey)
        {
            if (soul_topxpos < 1)
                soul_topxpos += 1
            else if (itempage == 0)
            {
                itempage = 1
                soul_topxpos = 0
                audio_play_sound(snd_battlemenu_move, 1, false)
            }
        }
        if keyboard_check_pressed(global.leftkey)
        {
            if (soul_topxpos > 0)
                soul_topxpos -= 1
            else if (itempage == 1)
            {
                itempage = 0
                soul_topxpos = 1
                audio_play_sound(snd_battlemenu_move, 1, false)
            }
        }
        if keyboard_check_pressed(global.downkey)
        {
            if (soul_ypos < 2)
                soul_ypos += 1
        }
        if keyboard_check_pressed(global.upkey)
        {
            if (soul_ypos > 1)
                soul_ypos -= 1
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            if (itempage == 0 && soul_topxpos == 0 && soul_ypos == 1 && global.item1 != 0)
                itemchosen = 1
            if (itempage == 0 && soul_topxpos == 1 && soul_ypos == 1 && global.item2 != 0)
                itemchosen = 2
            if (itempage == 0 && soul_topxpos == 0 && soul_ypos == 2 && global.item3 != 0)
                itemchosen = 3
            if (itempage == 0 && soul_topxpos == 1 && soul_ypos == 2 && global.item4 != 0)
                itemchosen = 4
            if (itempage == 1 && soul_topxpos == 0 && soul_ypos == 1 && global.item5 != 0)
                itemchosen = 5
            if (itempage == 1 && soul_topxpos == 1 && soul_ypos == 1 && global.item6 != 0)
                itemchosen = 6
            if (itempage == 1 && soul_topxpos == 0 && soul_ypos == 2 && global.item7 != 0)
                itemchosen = 7
            if (itempage == 1 && soul_topxpos == 1 && soul_ypos == 2 && global.item8 != 0)
                itemchosen = 8
            if (itemchosen != 0)
            {
                audio_play_sound(snd_battlemenu_select, 1, false)
                instance_create(x, y, obj_wait_for_me)
                soul_topxpos = 0
                soul_ypos = 0
                bottomrightpos = 0
                script_execute(scr_item_actions)
                global.battlemenuoffline = 1
            }
        }
    }
    if (mercyselected == 1)
    {
        if (global.fleedisabled == 0)
        {
            if keyboard_check_pressed(global.downkey)
            {
                if (soul_ypos < 2)
                    soul_ypos += 1
            }
            if keyboard_check_pressed(global.upkey)
            {
                if (soul_ypos > 1)
                    soul_ypos -= 1
            }
        }
        if (keyboard_check_pressed(global.actionkey) && (!instance_exists(obj_wait_for_me)))
        {
            audio_play_sound(snd_battlemenu_select, 1, false)
            if (soul_ypos == 1)
            {
                instance_create(x, y, obj_wait_for_me)
                instance_create(0, 0, obj_sparewave)
                instance_create(108, 0, obj_sparewave)
                instance_create(214, 0, obj_sparewave)
                global.battlemenuoffline = 1
            }
            if (soul_ypos == 2)
            {
                instance_create(x, y, obj_wait_for_me)
                instance_create(0, 0, obj_fleedecide)
                global.battlemenuoffline = 1
            }
        }
    }
    if (keyboard_check_pressed(global.cancelkey) && (!instance_exists(obj_wait_for_me)))
    {
        soul_ypos = 0
        fightselected = 0
        actselected = 0
        acting = 0
        itemselected = 0
        mercyselected = 0
        itemchosen = 0
        itempage = 0
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
    scr_soul_position_reset()
}
if (global.enemyamount > 0 && (!instance_exists(obj_enemy1_checkup)))
    instance_create(144, 0, obj_enemy1_checkup)
if (global.enemyamount > 1 && (!instance_exists(obj_enemy2_checkup)))
    instance_create(48, 0, obj_enemy2_checkup)
if (global.enemyamount > 2 && (!instance_exists(obj_enemy3_checkup)))
    instance_create(240, 0, obj_enemy3_checkup)
if (global.playerhealth > global.fullhealth)
    global.playerhealth = global.fullhealth
if (global.playerhealth <= 0)
{
    global.playerhealth = 0
    if (deathincreased == 0)
    {
        deathincreased = 1
        global.timesdied += 1
        if instance_exists(obj_misha_battle)
            global.mishatimesdied += 1
        if instance_exists(obj_dell_battle)
            global.delltimesdied += 1
    }
    instance_create(global.soulxposition, global.soulyposition, obj_battle_death)
    room_goto(rm_gameover)
}
if (instance_exists(obj_sani_battle) || instance_exists(obj_zeph_battle) || instance_exists(obj_sani_dummy) || instance_exists(obj_sniper_battle) || instance_exists(obj_jane_battle) || instance_exists(obj_spy_battle) || instance_exists(obj_dispenser_battle) || instance_exists(obj_scout_battle) || instance_exists(obj_merc1_battle) || instance_exists(obj_merc2_battle) || instance_exists(obj_merc3_battle) || instance_exists(obj_dell_battle) || instance_exists(obj_misha_battle) || instance_exists(obj_lethal_battle) || instance_exists(obj_hurts_battle) || instance_exists(obj_hunter_battle))
    global.fleedisabled = 1
else
    global.fleedisabled = 0
if instance_exists(obj_evade_soul)
{
    global.soulxposition = obj_evade_soul.x
    global.soulyposition = obj_evade_soul.y
}

