var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    with (instance_create((x + 36), 0, obj_speech_bubble))
    {
        MAXSTR = 0
        STR[0] = choose("(Chirp)", "(Tweet)", "(Bird#noises)")
    }
}
scr_no_more_actchoice()
action_set_relative(0)

