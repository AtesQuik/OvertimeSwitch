scr_above_or_below(0)
if (global.textboxchoice == 1)
{
    travel = 1
    roomname = 117
    global.travelto = 95
    global.textboxchoice = 0
    with (obj_text_box)
    {
        textvoice = 96
        MAXSTR = 0
        FACESTR[0] = 652
        STR[0] = "* Let's go."
    }
}
if (global.textboxchoice == 2)
{
    travel = 1
    roomname = 117
    global.travelto = 60
    global.textboxchoice = 0
    with (obj_text_box)
    {
        textvoice = 96
        MAXSTR = 0
        FACESTR[0] = 652
        STR[0] = "* Let's go."
    }
}
if (travel == 1 && (!instance_exists(obj_text_box)))
{
    script_execute(scr_transition_when_ready)
    if (!instance_exists(obj_room_fade_out))
        instance_create(x, y, obj_room_fade_out)
}

