var __b__;
action_set_relative(1)
if (enemyhealth <= 0)
{
    if (!(place_meeting(x, y, obj_enemy_down)))
    {
        alarm[6] = 30
        instance_create(x, y, obj_enemy_down)
        global.zepheniahkilled = 1
    }
}
if ((sparemeter <= 0 || enemyhealth < 2) && (!(place_meeting(x, y, obj_enemy_down))))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        instance_create(x, y, obj_enemy_spareable)
        if (enemyhealth < 2)
            global.battleapproachstring = "* Zepheniah seems to have#  finished his story now."
        else
            global.battleapproachstring = "* Zepheniah seems to have#  finished his story now."
    }
    if place_meeting(x, y, obj_sparewave)
    {
        if (!(place_meeting(x, y, obj_enemy_spared)))
        {
            instance_create(x, y, obj_enemy_spared)
            global.zepheniahhired = 1
        }
    }
}
if (place_meeting(x, y, obj_damaging_enemy) && enemyhurt == 0 && (!(place_meeting(x, y, obj_enemy_spared))) && (!(place_meeting(x, y, obj_enemy_down))))
{
    with (obj_damaging_enemy)
        instance_destroy()
    instance_create(x, 29, obj_miss)
    enemyhealth = 0
}
if (instance_exists(obj_evade_ground) && attacking == 0 && global.attacksarego == 1 && (!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
{
    attacking = 1
    with (instance_create(160, 112, obj_ghost_attack))
    {
        damagedone = other.enemyattack
        path_start(path_zeph_right, spd, path_action_reverse, 0)
    }
    with (instance_create(160, 112, obj_ghost_attack))
    {
        damagedone = other.enemyattack
        path_start(path_zeph_left, spd, path_action_reverse, 0)
    }
    with (instance_create(160, 112, obj_ghost_attack))
    {
        damagedone = other.enemyattack
        path_start(choose(7, 8), spd, path_action_reverse, 0)
    }
    with (instance_create(160, 112, obj_ghost_attack))
    {
        spd = choose(2, -2)
        leftright = 1
    }
    alarm[3] = global.evadetime
}
scr_enemy_names()
scr_enemy_waves_and_silly()
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
                global.battleapproachstring = "* Zepheniah's mood hasn't#  changed a bit...or has it?#* No, definitely not. Or yes?"
                script_execute(scr_checking_enemy)
            }
            if (global.actchoice == 1)
            {
                sparemeter -= 5
                actchoice = 1
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    if (sparemeter == 20)
                    {
                        global.battleapproachstring = "* Zepheniah seems like he#  needs to rant some more."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You ask Zepheniah how#  his day was.#* He ignores your question."
                        }
                    }
                    if (sparemeter == 15)
                    {
                        global.battleapproachstring = "* It feels like Zepheniah#  has more to say."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You look at him eagerly,#  as if you were waiting for#  him to finish his story."
                        }
                    }
                    if (sparemeter == 10)
                    {
                        global.battleapproachstring = "* Zepheniah doesn't seem#  like he's done talking#  already."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You're beginning to get#  more and more invested."
                        }
                    }
                    if (sparemeter == 5)
                    {
                        global.battleapproachstring = "* It appears that Zepheniah#  still has one last thing#  to say."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You take out a piece of#  paper and start to#  write down notes."
                        }
                    }
                    if (sparemeter == 0)
                    {
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You raise your hand and ask#  if this is going to be#  on the test."
                        }
                    }
                    if (sparemeter < 0)
                    {
                        global.battleapproachstring = "* Zepheniah seems to have#  finished his story now."
                        with (obj_text_box_battle)
                        {
                            MAXSTR = 0
                            STR[0] = "* You want to ask how the#  story continues, but you#  realise it's already over."
                        }
                    }
                }
            }
            if (global.actchoice == 2)
            {
                actchoice = 2
                global.battleapproachstring = "* Zepheniah doesn't stop#  looking you directly in the#  eyes."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You ask the ghost what's#  that behind him.#* He ignores you."
                    }
                }
            }
            if (global.actchoice == 3)
            {
                actchoice = 3
                global.battleapproachstring = "* Seems like someone#  doesn't celebrate#  Valentine's Day..."
                if (!instance_exists(obj_text_box_battle))
                {
                    instance_create(0, 0, obj_text_box_battle)
                    with (obj_text_box_battle)
                    {
                        MAXSTR = 0
                        STR[0] = "* You tell Zepheniah he's#  very handsome.#* He remains unfazed."
                    }
                }
            }
        }
        scr_enemy_waiting_for_textbox()
    }
}
action_set_relative(0)

