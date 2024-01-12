var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    global.evadetime = 120
    if (sparemeter > 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurts"
        }
    }
    if (actchoice == 4)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurts"
        }
    }
    if (actchoice == 1)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurts"
        }
    }
    if (actchoice == 2)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurts"
        }
    }
    if (actchoice == 3)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurts"
        }
    }
    if (sparemeter <= 0 && actchoice == 0)
    {
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "it hurt"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

