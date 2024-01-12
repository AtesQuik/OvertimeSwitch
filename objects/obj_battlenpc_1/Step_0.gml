var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* Ro-Buddy is down."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += round(random_range(8, 12))
        global.enemieskilled += 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth < 2)
            global.battleapproachstring = "* Ro-buddy thinks it's better to live and spares you."
        else
            global.battleapproachstring = "* Ro-buddy is happy now and can be spared."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Ro-Buddy has left the game."
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
        }
    }
}
script_execute(scr_taking_damage)
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    if (global.enemyamount == 1)
    {
        with (instance_create(x, y, obj_bullet_test))
            damagedone = other.enemyattack
        alarm[3] = 15
        audio_play_sound(snd_hardtest, 1, false)
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            with (instance_create(x, y, obj_bullet_test))
                damagedone = other.enemyattack
            alarm[3] = 30
            audio_play_sound(snd_mediumtest, 1, false)
        }
        else
        {
            with (instance_create(x, y, obj_bullet_test))
                damagedone = other.enemyattack
            alarm[3] = 15
            audio_play_sound(snd_hardtest, 1, false)
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            with (instance_create(x, y, obj_bullet_test))
                damagedone = other.enemyattack
            alarm[3] = 45
            audio_play_sound(snd_lighttest, 1, false)
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            with (instance_create(x, y, obj_bullet_test))
                damagedone = other.enemyattack
            alarm[3] = 15
            audio_play_sound(snd_hardtest, 1, false)
        }
        else
        {
            with (instance_create(x, y, obj_bullet_test))
                damagedone = other.enemyattack
            alarm[3] = 30
            audio_play_sound(snd_mediumtest, 1, false)
        }
    }
}
scr_enemy_names()
scr_enemy_waves_and_silly()
scr_enemy_death_transparency()
__b__ = action_if_object(101, 0, 0)
if (!__b__)
{
    __b__ = action_if_object(100, 0, 0)
    if (!__b__)
    {
        __b__ = action_if_object(112, 0, 0)
        if __b__
            scr_enemy_set_act_names()
        if (global.isacting == 1 && waitingfortext == 0 && place_meeting(x, y, obj_youact))
        {
            waitingfortext = 1
            with (obj_youact)
                instance_destroy()
            if (global.actchoice < 1)
            {
                actchoice = 4
                global.battleapproachstring = "* Ro-Buddy is annoyed still."
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                global.battleapproachstring = "* Ro-Buddy is annoyed still."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You compliment the enemy's#  face, but he is too busy #  to notice."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Ro-Buddy is annoyed still."
                if (!instance_exists(obj_text_box_battle))
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* You insult the enemy's#  face. He looks annoyed."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                sparemeter -= 5
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Ro-buddy seems much happier#after you did this to him."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You steal the enemy's#  face. He can't even#  look anymore."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You give the robot a new face. He can now look better."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Ro-buddy feels perfect still."
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You realise you can already spare him."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

