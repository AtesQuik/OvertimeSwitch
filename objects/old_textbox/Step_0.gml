if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
{
    if (N < MAXSTR)
    {
        POS = 0
        N += 1
    }
}
if (keyboard_check_pressed(global.actionkey) && POS >= string_length(STR[N]))
{
    if (N == MAXSTR)
        instance_destroy()
}
if keyboard_check_pressed(global.cancelkey)
    POS = (string_length(CSTR) + 1)
else
    POS += 1
CSTR = STR[N]
if (POS < (string_length(CSTR) + 1))
    audio_play_sound(textvoice, 1, false)
textface = FACESTR[N]
if (textface != 0)
{
    if (!instance_exists(obj_textface))
        instance_create(x, y, obj_textface)
    with (obj_textface)
        face = other.textface
}

