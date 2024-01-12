var __b__;
__b__ = action_if_variable(global.thundermountainover, 1, 0)
if __b__
    action_kill_object()
else
{
    if (global.textboxchoice == 1)
    {
        global.textboxchoice = 0
        if (global.australium >= 20)
        {
            if (global.inventoryfull == 0)
            {
                global.australium -= 20
                script_execute(scr_item_add, "Badkit")
                with (obj_text_box)
                {
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
                    MAXSTR = 0
                    STR[0] = "* THANK YOU FOR#  YOUR PURCHASE."
                }
            }
            else
            {
                with (obj_text_box)
                {
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
                    MAXSTR = 1
                    STR[0] = "* MY CALCULATIONS SHOW THAT#  YOU DON'T HAVE ENOUGH#  SPACE IN YOUR BACKPACK."
                    STR[1] = "* COME AGAIN LATER."
                }
            }
        }
        else
        {
            with (obj_text_box)
            {
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
                MAXSTR = 0
                STR[0] = "* YOU DO NOT HAVE#  ENOUGH AUSTRALIUM FOR#  THIS PURCHASE."
            }
        }
    }
    if (global.textboxchoice == 2)
    {
        global.textboxchoice = 0
        with (obj_text_box)
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 0
            STR[0] = "* THANK YOU ANYWAY."
        }
    }
    if (!instance_exists(obj_text_box))
        talkingto = 0
    else if (talkingto == 1)
    {
        with (obj_text_box)
        {
            if (voicenow == 1)
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        }
    }
    scr_above_or_below(-10)
}

