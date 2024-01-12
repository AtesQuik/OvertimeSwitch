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
if ((instance_exists(obj_dell_battle) || instance_exists(obj_mbm_dell_intro)) && keyboard_check_pressed(global.cancelkey))
    POS = (string_length(CSTR) + 1)
else
{
    POS += 1
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
        {
            if (voiceon == 1)
                audio_play_sound(textvoice, 1, false)
        }
    }
}
CSTR = STR[N]

