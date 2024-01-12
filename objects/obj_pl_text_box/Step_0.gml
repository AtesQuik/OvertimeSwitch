if (POS >= string_length(STR[N]))
{
    if (N < MAXSTR)
    {
        if (atend == 0)
        {
            atend = 1
            alarm[0] = 60
        }
    }
}
if (POS >= string_length(STR[N]))
{
    if (N == MAXSTR)
    {
        if (atend == 0)
        {
            atend = 1
            alarm[1] = 120
        }
    }
}
POS += 0.25
CSTR = STR[N]
if (voicenow < 2)
    voicenow += 0.5
else
    voicenow = 0
if (POS < (string_length(CSTR) + 1))
{
    if (dontplay == 0)
    {
        if (textvoice != snd_voice_standard && textvoice != snd_text_battle)
        {
            if (voicenow == 0)
                audio_play_sound(textvoice, 1, false)
        }
        else
            audio_play_sound(textvoice, 1, false)
    }
}

