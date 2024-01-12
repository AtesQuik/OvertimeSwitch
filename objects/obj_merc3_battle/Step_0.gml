var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.battleapproachstring = "* 4O4 has been#  eliminated."
        global.xpyouwillget += xpreceive
        global.cashyouwillget += 20
        global.enemieskilled += 1
        global.merc3killed = 1
        if (global.enemiestokill > 0)
            global.enemiesleft -= 1
    }
}
if (sparemeter <= 0 && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        global.battleapproachstring = "* 4O4 decides to just give#  up already."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            global.battleapproachstring = "* 4O4 is having a mental#  breakdown due to ST3RM4#  and J4R's bickering."
            global.cashyouwillget += cashreceive
            instance_create(x, y, obj_enemy_spared)
            instance_create(x, y, obj_spare_effect)
            global.enemiesspared += 1
            global.merc3hired = 1
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
global.fleedisabled = 1
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
{
    attacking = 1
    alarm[3] = 30
    with (instance_create(choose(340, -20), random_range(135, 185), obj_db_turretbullet))
    {
        spd = other.enemyspeed
        damagedone = other.enemyattack
        orangeorblue = 0
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
                if (global.merc1killed == 0 && global.merc2killed == 0)
                    global.battleapproachstring = "* 4O4 is too loyal to#  his employers to give#  up fighting you."
                else
                    global.battleapproachstring = "* 4O4 is filled with too#  much rage to be hired."
                with (instance_create(0, 0, obj_text_box_battle))
                {
                    MAXSTR = 0
                    STR[0] = "* You try to reason with#  4O4, but he can not be#  reasoned with."
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                if (global.merc1killed == 0 && global.merc2killed == 0)
                    global.battleapproachstring = "* 4O4 is too loyal to#  his employers to give#  up fighting you."
                else
                    global.battleapproachstring = "* 4O4 is filled with too#  much rage to be hired."
                with (instance_create(0, 0, obj_text_box_battle))
                {
                    MAXSTR = 0
                    STR[0] = "* You plead not guilty.#* 4O4 does not care."
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                if (global.merc1killed == 0 && global.merc2killed == 0)
                    global.battleapproachstring = "* 4O4 is too loyal to#  his employers to give#  up fighting you."
                else
                    global.battleapproachstring = "* 4O4 is filled with too#  much rage to be hired."
                with (instance_create(0, 0, obj_text_box_battle))
                {
                    MAXSTR = 0
                    STR[0] = "* You beg 4O4 not to#  kill you.#* But he has other plans."
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

