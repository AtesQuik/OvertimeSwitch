var __b__;
scr_turn_if_no_textbox()
__b__ = action_if_variable(timestalked, 1, 0)
if __b__
{
    if (global.textboxchoice == 1)
    {
        with (obj_text_box)
        {
            MAXSTR = 0
            FACESTR[0] = 619
            STR[0] = "* Yes? Really? Okay..."
        }
        timestalked = 0
    }
    else if (global.textboxchoice == 2)
    {
        with (obj_text_box)
        {
            MAXSTR = 0
            FACESTR[0] = 619
            STR[0] = "* No? How wonderful!"
        }
        timestalked = 0
    }
}
if instance_exists(obj_text_box)
{
    if (talkingto == 1)
    {
        with (obj_text_box)
        {
            if (N == 0)
                textvoice = 82
            if (N == 1)
                textvoice = 96
            if (N == 2)
                textvoice = 85
            if (N == 3)
                textvoice = 86
            if (N == 4)
                textvoice = 99
            if (N == 5)
                textvoice = 97
            if (N == 6)
                textvoice = 98
            if (N == 7)
                textvoice = 81
            if (N == 8)
                textvoice = 104
        }
    }
}
else
    talkingto = 0

