var __b__;
action_set_relative(1)
if (enemyhealth < 2 && lowhp == 0)
{
    lowhp = 1
    global.battleapproachstring = "* Misha has almost no HP#  left."
}
if (enemyhealth <= 0)
{
    if (global.genocide == 0)
        room_goto(rm_mbm_misha_death)
    else if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 0
        global.enemieskilled += 1
        global.mishakilled = 1
        global.increaselv = 1
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
        if (global.genocide == 0)
        {
            if (!(place_meeting(x, y, obj_enemy_spareable)))
                enemyhealth -= global.enemydamage
            else
            {
                global.enemydamage = global.betrayaldamage
                enemyhealth = 0
            }
        }
        else if (global.genocide == 1)
        {
            if (global.elidown == 1)
            {
                global.enemydamage = global.betrayaldamage
                enemyhealth = 0
            }
        }
    }
}
script_execute(scr_sparemeter_limit)
if (instance_exists(obj_evade_soul) && enemyhealth > 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
{
    if (blackalpha < 0.5)
        blackalpha += 0.05
}
else if (blackalpha > 0)
    blackalpha -= 0.05
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && global.evadetime > 1)
{
    attacking = 1
    if (attackchance == 1)
    {
        alarm[3] = global.evadetime
        if (global.genocide == 0 || global.elidown == 1)
        {
            if (enemyhealth > 50)
            {
                with (instance_create(160, 210, obj_bullet_follow2))
                    damagedone = other.enemyattack
            }
            if (enemyhealth > 17 && enemyhealth <= 50)
            {
                with (instance_create(160, 210, obj_bullet_follow2))
                {
                    damagedone = other.enemyattack
                    spd = 2
                    alarm[2] = 30
                }
            }
            if (enemyhealth <= 17)
            {
                with (instance_create(160, 210, obj_bullet_follow2))
                {
                    damagedone = other.enemyattack
                    spd = 2
                    bulletspd = 1
                    alarm[2] = 15
                }
            }
        }
        else
        {
            with (instance_create(160, 210, obj_bullet_follow2))
            {
                damagedone = other.enemyattack
                spd = 3
                alarm[0] = 1
                alarm[2] = 10
            }
        }
    }
    if (attackchance == 2)
    {
        if (punching == 0)
        {
            if (global.genocide == 0 || global.elidown == 1)
            {
                punching = 1
                if (enemyhealth > 50)
                {
                    with (instance_create(x, y, obj_misha_punchmode))
                        damagedone = other.enemyattack
                }
                if (enemyhealth > 17 && enemyhealth <= 50)
                {
                    with (instance_create(x, y, obj_misha_punchmode))
                    {
                        damagedone = other.enemyattack
                        amount = 1
                    }
                }
                if (enemyhealth <= 17)
                {
                    with (instance_create(x, y, obj_misha_punchmode))
                    {
                        damagedone = other.enemyattack
                        amount = 2
                    }
                }
            }
            else
            {
                with (instance_create(x, y, obj_misha_punchmode))
                {
                    damagedone = other.enemyattack
                    amount = 2
                }
            }
            alarm[3] = global.evadetime
        }
    }
    if (attackchance == 3)
    {
        alarm[3] = global.evadetime
        with (instance_create(x, y, obj_danger_zones))
            damagedone = other.enemyattack
    }
}
if (attacking == 1)
{
    if (attackchance == 2)
    {
        if instance_exists(obj_misha_punchmode)
        {
            punching = 1
            if instance_exists(obj_evade_ground)
            {
                with (obj_evade_ground)
                    alarm[1] = 240
            }
            alarm[3] = global.evadetime
        }
        else if (punchstop == 0)
        {
            punchstop = 1
            punching = 0
            if instance_exists(obj_evade_ground)
            {
                with (obj_evade_ground)
                    alarm[1] = 5
            }
            alarm[3] = 15
        }
    }
}
if (upordown == 0)
{
    if (shaking < 1)
        shaking += 0.1
    if (shaking >= 1 && shaking < 3)
        shaking += 0.25
    if (shaking >= 3 && shaking < 6)
        shaking += 0.5
    if (shaking >= 6 && shaking < 8)
        shaking += 0.25
    if (shaking >= 8 && shaking < 9)
        shaking += 0.1
    if (shaking == 9)
        upordown = 1
}
else
{
    if (shaking > 8)
        shaking -= 0.1
    if (shaking > 6 && shaking <= 8)
        shaking -= 0.25
    if (shaking > 3 && shaking <= 6)
        shaking -= 0.5
    if (shaking > 1 && shaking <= 3)
        shaking -= 0.25
    if (shaking <= 1)
        shaking -= 0.1
    if (shaking == 0)
        upordown = 0
}
if instance_exists(obj_eli_battle)
{
    if (global.elidown == 1)
        enemyinfo = "Not so strong anymore."
    else
        enemyinfo = "Way stronger thanks to Eli."
}
scr_enemy_names()
scr_enemy_death_transparency()
if (place_meeting(x, y, obj_actwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_actwave))
        instance_destroy()
    alarm[5] = 1
}
if (place_meeting(x, y, obj_fightwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fightwave))
        instance_destroy()
    if (enemyhealth > 0)
        alarm[5] = 30
}
if (place_meeting(x, y, obj_itemwave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_itemwave))
        instance_destroy()
    alarm[5] = 1
}
if (global.flee == 0 && place_meeting(x, y, obj_fleewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_fleewave))
        instance_destroy()
    alarm[5] = 1
}
if (place_meeting(x, y, obj_sparewave) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (instance_position(x, y, obj_sparewave))
        instance_destroy()
    alarm[5] = 1
}
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
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (global.genocide == 0)
                    global.battleapproachstring = "* ..."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        if (global.genocide == 0)
                        {
                            if (global.mishatimesdied == 0)
                                STR[0] = "* You tell Misha killing you#  won't work.#* He nods understandingly."
                            if (global.mishatimesdied == 1)
                                STR[0] = "* You tell Misha he has#  killed you once already.#* He nods gravely."
                            if (global.mishatimesdied == 2)
                                STR[0] = "* You tell Misha he's killed#  you twice already.#* He nods sorrowfully."
                            if (global.mishatimesdied == 3)
                                STR[0] = "* You tell Misha he's killed#  you three times already.#* He nods feebly."
                            if (global.mishatimesdied == 4)
                                STR[0] = "* You tell Misha he's killed#  you four times already.#* He nods remorsefully."
                            if (global.mishatimesdied > 4)
                                STR[0] = "* Before you can even say#  anything, Misha hangs his#  head in shame."
                        }
                        else
                            STR[0] = "* Misha doesn't look like#  he wants to talk to you."
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (global.genocide == 0)
                    global.battleapproachstring = "* ..."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        if (global.genocide == 0)
                        {
                            if (global.mishatimesdied == 0)
                                STR[0] = "* You tell Misha killing you#  won't work.#* He nods understandingly."
                            if (global.mishatimesdied == 1)
                                STR[0] = "* You tell Misha he has#  killed you once already.#* He nods gravely."
                            if (global.mishatimesdied == 2)
                                STR[0] = "* You tell Misha he's killed#  you twice already.#* He nods sorrowfully."
                            if (global.mishatimesdied == 3)
                                STR[0] = "* You tell Misha he's killed#  you three times already.#* He nods feebly."
                            if (global.mishatimesdied == 4)
                                STR[0] = "* You tell Misha he's killed#  you four times already.#* He nods remorsefully."
                            if (global.mishatimesdied > 4)
                                STR[0] = "* Before you can even say#  anything, Misha hangs his#  head in shame."
                        }
                        else
                            STR[0] = "* Misha doesn't look like#  he wants to talk to you."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (global.genocide == 0)
                    global.battleapproachstring = "* ..."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        if (global.genocide == 0)
                        {
                            if (global.mishatimesdied == 0)
                                STR[0] = "* You tell Misha killing you#  won't work.#* He nods understandingly."
                            if (global.mishatimesdied == 1)
                                STR[0] = "* You tell Misha he has#  killed you once already.#* He nods gravely."
                            if (global.mishatimesdied == 2)
                                STR[0] = "* You tell Misha he's killed#  you twice already.#* He nods sorrowfully."
                            if (global.mishatimesdied == 3)
                                STR[0] = "* You tell Misha he's killed#  you three times already.#* He nods feebly."
                            if (global.mishatimesdied == 4)
                                STR[0] = "* You tell Misha he's killed#  you four times already.#* He nods remorsefully."
                            if (global.mishatimesdied > 4)
                                STR[0] = "* Before you can even say#  anything, Misha hangs his#  head in shame."
                        }
                        else
                            STR[0] = "* Misha doesn't look like#  he wants to talk to you."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

