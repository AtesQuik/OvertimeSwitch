var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* J4R has been#  eliminated."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 20
        global.enemieskilled += 1
        global.merc2killed = 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        global.battleapproachstring = "* J4R is feeling bad because#  ST3RM4 quit fighting."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* J4R suspects he went too#  far this time, and leaves#  the battle as well."
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.merc2hired = 1
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
    with (instance_create(choose(350, -30), random_range(135, 185), obj_db_turretbullet))
    {
        spd = other.enemyspeed
        damagedone = other.enemyattack
        orangeorblue = 2
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
                    if (global.merc1killed == 0 && global.merc3killed == 0)
                    {
                        if (obj_merc1_battle.sparemeter > 5)
                        {
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You try to invite J4R, but#  you don't have anything to#  invite him to. Yet."
                            }
                        }
                        if (obj_merc1_battle.sparemeter == 5)
                        {
                            obj_merc1_battle.sparemeter -= 5
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You invite J4R to help you#  with the prank, and he joy-#  fully kicks ST3RM4's butt."
                            }
                        }
                        if (obj_merc1_battle.sparemeter <= 0)
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
                            STR[0] = "* J4R is furious.#* No amount of pranking will#  make him stop fighting now."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.merc1killed == 0 && global.merc3killed == 0)
                    {
                        if (obj_merc1_battle.sparemeter > 5)
                        {
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You want to encourage J4R#  to join you, but he can't#  join anything. Yet."
                            }
                        }
                        if (obj_merc1_battle.sparemeter == 5)
                        {
                            obj_merc1_battle.sparemeter -= 5
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You encourage J4R to kick#  ST3RM4's butt as part of#  the prank, and he does!"
                            }
                        }
                        if (obj_merc1_battle.sparemeter <= 0)
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
                            STR[0] = "* J4R is furious.#* No amount of pranking will#  make him stop fighting now."
                        }
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (!instance_exists(obj_text_box_battle))
                {
                    if (global.merc1killed == 0 && global.merc3killed == 0)
                    {
                        if (obj_merc1_battle.sparemeter > 5)
                        {
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You ask J4R to help you#  with something, but you#  don't need any help. Yet."
                            }
                        }
                        if (obj_merc1_battle.sparemeter == 5)
                        {
                            obj_merc1_battle.sparemeter -= 5
                            with (instance_create(0, 0, obj_text_box_battle))
                            {
                                MAXSTR = 0
                                STR[0] = "* You ask J4R for help with#  the prank, and he happily#  kicks ST3RM4's butt."
                            }
                        }
                        if (obj_merc1_battle.sparemeter <= 0)
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
                            STR[0] = "* J4R is furious.#* No amount of pranking will#  make him stop fighting now."
                        }
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

