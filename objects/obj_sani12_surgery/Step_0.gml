var __b__;
action_set_relative(1)
__b__ = action_if_variable(global.hospitalprogress, 24, 2)
if __b__
{
    action_kill_object()
    __b__ = action_if_variable(global.hospitalprogress, 26, 1)
    if __b__
    {
        with (obj_pro_stopped)
            action_kill_object()
        action_create_object(obj_sani13, 0, 0)
    }
}
else
{
    image_index = npcdirection
    if (global.textboxchoice == 1)
    {
        with (obj_text_box)
        {
            MAXSTR = 0
            textvoice = 82
            FACESTR[0] = 620
            STR[0] = "* Okay, come to me if you#  need anything!"
        }
        global.hospitalprogress = 24
        global.textboxchoice = 0
    }
    if (global.textboxchoice == 2)
    {
        with (obj_text_box)
        {
            MAXSTR = 0
            textvoice = 82
            FACESTR[0] = 620
            STR[0] = "* Nothing? Good!#  Bother me if you need#  anything."
        }
        global.hospitalprogress = 24
        global.textboxchoice = 0
    }
    if (global.hospitalprogress == 24 && (!instance_exists(obj_text_box)))
    {
        global.hospitalprogress = 25
        with (obj_pro_stopped)
            instance_destroy()
    }
    if (global.hospitalprogress == 21 && (!instance_exists(obj_h_target)))
        instance_create(130, 170, obj_h_target)
}
action_set_relative(0)

