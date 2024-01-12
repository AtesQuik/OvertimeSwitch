var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "....."
    }
}
scr_no_more_actchoice()
action_set_relative(0)
wavethere = 0
action_set_relative(1)
action_set_relative(0)

