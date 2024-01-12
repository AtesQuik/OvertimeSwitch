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
            STR[0] = "Grmbl..."
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "Stop#that!"
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "No one#cleans#me..."
        }
    }
    if (actchoice == 2)
    {
        if (sparemeter > 9)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "I hate#you#still..."
            }
        }
        if (sparemeter > 4)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "This is#nicer..."
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                MAXSTR = 0
                STR[0] = "I feel#a lot#better!"
            }
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "WHY#WOULD#YOU DO#THAT?!?"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            MAXSTR = 0
            STR[0] = "I am so#pretty."
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

