var __b__;
textface = FACESTR[N]
if (textface != 0)
{
    if (!instance_exists(obj_textface))
        instance_create(x, y, obj_textface)
    with (obj_textface)
        face = other.textface
}
__b__ = action_if_variable(timetochoose, 0, 0)
if __b__
{
    if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
    {
        if (N < MAXSTR)
        {
            POS = 0
            N += 1
        }
    }
    if (choices == 0)
    {
        if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
        {
            if (N == MAXSTR)
                instance_destroy()
        }
    }
    else if (POS >= string_length(STR[N]))
    {
        if (N == MAXSTR)
            timetochoose = 1
    }
    script_execute(scr_text_sounds)
    CSTR = STR[N]
}
else
{
    if (keyboard_check_pressed(global.rightkey) && selected == 0)
    {
        audio_play_sound(snd_battlemenu_move, 1, false)
        selected = 1
    }
    if (keyboard_check_pressed(global.leftkey) && selected == 1)
    {
        audio_play_sound(snd_battlemenu_move, 1, false)
        selected = 0
    }
    if keyboard_check_pressed(global.actionkey)
    {
        audio_play_sound(snd_battlemenu_select, 1, false)
        if (selected == 0)
            global.textboxchoice = 1
        if (selected == 1)
            global.textboxchoice = 2
        instance_destroy()
        instance_create(x, y, obj_text_box)
    }
}

