var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 0)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "..."
        }
    }
    if (actchoice == 4)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "...?"
        }
    }
    if (actchoice == 1)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "..."
        }
    }
    if (actchoice == 2)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "...!"
        }
    }
    if (actchoice == 3)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "...!"
        }
    }
    if (sparemeter <= 0)
    {
        instance_create(x, 0, obj_speech_bubble)
        with (obj_speech_bubble)
        {
            MAXSTR = 0
            STR[0] = "...:)"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

