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
        global.cashyouwillget += cashreceive
        global.enemieskilled += 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if ((sparemeter <= 0 || enemyhealth <= 5) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth <= 5)
            global.battleapproachstring = "* Ro-buddy thinks it's better to live and spares you."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* Ro-Buddy has left the game."
            global.cashyouwillget += cashreceive
            global.genocide = 0
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
        }
    }
}
if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_damaging_enemy)
        instance_destroy()
    script_execute(scr_damage_numbers)
    if (global.enemydamage > 0)
    {
        audio_play_sound(snd_enemy_hurt, 1, false)
        enemyhurt = 1
        alarm[0] = 30
        if (!(place_meeting(x, y, obj_enemy_spareable)))
            enemyhealth -= global.enemydamage
        else
            enemyhealth = 0
    }
}
if (sparemeter < 0)
    sparemeter = 0
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    if (global.enemyamount == 1)
    {
        instance_create(x, y, obj_bullet_test)
        alarm[3] = 15
        audio_play_sound(snd_hardtest, 1, false)
    }
    if (global.enemyamount == 2)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0)
        {
            instance_create(x, y, obj_bullet_test)
            alarm[3] = 30
            audio_play_sound(snd_mediumtest, 1, false)
        }
        else
        {
            instance_create(x, y, obj_bullet_test)
            alarm[3] = 15
            audio_play_sound(snd_hardtest, 1, false)
        }
    }
    if (global.enemyamount == 3)
    {
        if (global.enemy1down == 0 && global.enemy1spared == 0 && global.enemy2down == 0 && global.enemy2spared == 0 && global.enemy3down == 0 && global.enemy3spared == 0)
        {
            instance_create(x, y, obj_bullet_test)
            alarm[3] = 45
            audio_play_sound(snd_lighttest, 1, false)
        }
        else if (((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1)) || ((global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)) || ((global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1)))
        {
            instance_create(x, y, obj_bullet_test)
            alarm[3] = 15
            audio_play_sound(snd_hardtest, 1, false)
        }
        else
        {
            instance_create(x, y, obj_bullet_test)
            alarm[3] = 30
            audio_play_sound(snd_mediumtest, 1, false)
        }
    }
}
if place_meeting(x, y, obj_enemy1_checkup)
    global.battleenemy1 = enemyname
if place_meeting(x, y, obj_enemy2_checkup)
    global.battleenemy2 = enemyname
if place_meeting(x, y, obj_enemy3_checkup)
    global.battleenemy3 = enemyname
if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    alarm[5] = 1
if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    alarm[5] = 30
if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    alarm[5] = 1
if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    alarm[5] = 1
if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    alarm[5] = 1
__b__ = action_if_object(101, 0, 0)
if (!__b__)
{
    __b__ = action_if_object(100, 0, 0)
    if (!__b__)
    {
        __b__ = action_if_object(112, 0, 0)
        if __b__
        {
            global.act1 = act1
            global.act2 = act2
            global.act3 = act3
            global.act4 = act4
        }
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
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
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
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
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
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* Ro-buddy seems much happier#after you did this to him."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You steal the enemy's#  face. He can't even#  look anymore."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        global.battleapproachstring = "* Ro-buddy feels perfect."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You give the robot a new face. He can now look better."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Ro-buddy feels perfect still."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You realise you can already spare him."
                        }
                    }
                }
            }
        }
        if (waitingfortext == 1)
        {
            if (!instance_exists(obj_text_box_battle))
            {
                thisone = 0
                global.isacting = 0
                waitingfortext = 0
                alarm[5] = 1
            }
        }
    }
}
action_set_relative(0)

