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
POS += 1
if (voicenow < 2)
    voicenow += 1
else
    voicenow = 0
if (POS < (string_length(CSTR) + 1))
{
    if (textvoice != snd_voice_standard && textvoice != snd_text_battle)
    {
        if (voicenow == 0)
            audio_play_sound(textvoice, 1, false)
    }
    else
        audio_play_sound(textvoice, 1, false)
}
CSTR = STR[N]

