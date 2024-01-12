var __b__;
__b__ = action_if_variable(global.sniperkilled, 1, 0)
if __b__
    action_kill_object()
else
{
    scr_above_or_below(-10)
    __b__ = action_if_variable(global.dbsniper, 0, 0)
    if __b__
    {
        __b__ = action_if_variable(global.minesover, 0, 0)
        if __b__
        {
            if (global.textboxchoice == 1)
            {
                travel = 1
                global.travelto = 55
                roomname = 56
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
                with (obj_text_box)
                {
                    textvoice = 96
                    MAXSTR = 0
                    FACESTR[0] = 652
                    STR[0] = "* See ya."
                }
                global.textboxchoice = 0
            }
            if (travel == 1 && (!instance_exists(obj_text_box)))
            {
                script_execute(scr_transition_when_ready)
                if (!instance_exists(obj_room_fade_out))
                    instance_create(x, y, obj_room_fade_out)
            }
        }
        __b__ = action_if_variable(global.minesover, 1, 0)
        if __b__
        {
            if (global.textboxchoice == 1)
            {
                travel = 1
                global.travelto = 95
                roomname = 117
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
                global.travelto = 55
                roomname = 56
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
        }
    }
    __b__ = action_if_variable(global.dbsniper, 1, 0)
    if __b__
    {
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
            global.travelto = 116
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
    }
}

