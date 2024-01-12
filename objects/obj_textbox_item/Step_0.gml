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
script_execute(scr_text_sounds)
CSTR = STR[N]

