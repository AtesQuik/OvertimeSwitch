var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* ST3RM4 has been#  eliminated."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 20
        global.enemieskilled += 1
        global.merc1killed = 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        global.battleapproachstring = "* ST3RM4 is seriously mad#  and refuses to work under#  these conditions."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* ST3RM4 storms out of the#  battle in a fit of rage."
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.merc1hired = 1
            global.genocideaborted = 1
        }
    }
}
script_execute(scr_taking_damage)
script_execute(scr_sparemeter_limit)
if (upordown == 0)
{
    if (shaking < 8)
        shaking += 1
    else
        upordown = 1
}
else if (shaking > -7)
    shaking -= 1
else
    upordown = 0
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
{
    attacking = 1
    alarm[3] = 30
    with (instance_create(choose(360, -40), random_range(135, 185), obj_db_turretbullet))
    {
        spd = other.enemyspeed
        damagedone = other.enemyattack
        orangeorblue = 1
    }
}
if (global.merc1killed == 1 || global.merc2killed == 1 || global.merc3killed == 1)
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
    {
        enemyattack = 4
        enemyspeed = 10
        sparemeter = 50
        with (obj_enemy_spareable)
            instance_destroy()
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
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.merc2killed == 0 && global.merc3killed == 0)
                    {
                        if (sparemeter == 15)
                        {
                            global.battleapproachstring = "* Although ST3RM4 has turned#  around, he can still#  attack you. Don't ask."
                            sparemeter -= 5
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You tell ST3RM4 there is#  something unbelievably#  interesting behind him."
                            }
                        }
                        if (sparemeter < 15 && sparemeter > 1)
                        {
                            global.battleapproachstring = "* Although ST3RM4 has turned#  around, he can still#  attack you. Don't ask."
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* ST3RM4 is already#  distracted. Perhaps you#  could prank him..."
                            }
                        }
                        if (sparemeter <= 0)
                        {
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* Since ST3RM4 has been#  pranked already, this is#  not necessary anymore."
                            }
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* ST3RM4 is mad.#* He refuses to stop fighting#  you now."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                if (global.merc2killed == 0 && global.merc3killed == 0)
                {
                    actchoice = 2
                    global.battleapproachstring = "* ST3RM4 seems like he's#  easily pranked..."
                    if (sparemeter > 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* You beatbox a little tune.#* ST3RM4 is impressed, but#  nothing else happens."
                        }
                    }
                    if (sparemeter <= 0)
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* Since ST3RM4 has been#  pranked already, this is#  not necessary anymore."
                        }
                    }
                }
                else
                {
                    with (instance_create(0, 0, obj_text_box_battle))
                    {
                        MAXSTR = 0
                        STR[0] = "* ST3RM4 is mad.#* He refuses to stop fighting#  you now."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.merc2killed == 0 && global.merc3killed == 0)
                    {
                        if (sparemeter == 15)
                        {
                            global.battleapproachstring = "* ST3RM4 seems like he has#  the attention span of a...#* Sorry, got distracted."
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You try to prank ST3RM4,#  but he's paying too much#  attention to your actions."
                            }
                        }
                        if (sparemeter == 10)
                        {
                            sparemeter -= 5
                            global.battleapproachstring = "* ST3RM4 has a note stuck#  to his back. J4R looks very#  interested in this prank."
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You stick a note that#  says 'Kick me' on ST3RM4's#  back."
                            }
                        }
                        if (sparemeter == 5)
                        {
                            global.battleapproachstring = "* ST3RM4 has a note stuck#  to his back. J4R looks very#  interested in this prank."
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* ST3RM4 is already being#  pranked. Maybe J4R wants#  to join in on the fun?"
                            }
                        }
                        if (sparemeter <= 0)
                        {
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* Since ST3RM4 has been#  pranked already, this is#  not necessary anymore."
                            }
                        }
                    }
                    else
                    {
                        with (instance_create(0, 0, obj_text_box_battle))
                        {
                            MAXSTR = 0
                            STR[0] = "* ST3RM4 is mad.#* He refuses to stop fighting#  you now."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

