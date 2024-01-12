var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "..."
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "..."
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = choose("(Gig-#gles)", "(Snic-#kers)", "(Chuc-#kles)")
        }
    }
    if (actchoice == 2)
    {
        if (sparemeter > 4)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "I can#do#that..."
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "This#is#fun..."
            }
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "(Shakes#head)"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        if (crowbar == 0)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "(Happy#sigh)"
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "My...#old...#crow-#bar..."
            }
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

