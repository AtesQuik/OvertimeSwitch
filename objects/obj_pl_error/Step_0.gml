CSTR = STR[N]
if (progress == 0 || progress == 2 || progress == 4 || progress == 6 || progress == 8 || progress == 10 || progress == 12 || progress == 14 || progress == 16)
{
    POS += 0.5
    if (voicenow < 2)
        voicenow += 1
    else
        voicenow = 0
    if (POS < (string_length(CSTR) + 1))
    {
        if (voicenow == 0)
            audio_play_sound(snd_text_battle, 1, false)
    }
}
if (progress == 0)
{
    if (POS >= string_length(CSTR))
    {
        progress = 1
        alarm[2] = 30
    }
}
if (progress == 2)
{
    if (POS >= string_length(CSTR))
    {
        progress = 3
        alarm[2] = 30
    }
}
if (progress == 4)
{
    if (POS >= string_length(CSTR))
    {
        progress = 5
        alarm[2] = 30
    }
}
if (progress == 6)
{
    if (POS >= string_length(CSTR))
    {
        progress = 7
        alarm[2] = 30
    }
}
if (progress == 8)
{
    if (POS >= string_length(CSTR))
    {
        progress = 9
        alarm[2] = 30
    }
}
if (progress == 10)
{
    if (POS >= string_length(CSTR))
    {
        progress = 11
        alarm[2] = 30
    }
}
if (progress == 12)
{
    if (POS >= string_length(CSTR))
    {
        progress = 13
        alarm[2] = 30
    }
}
if (progress == 14)
{
    if (POS >= string_length(CSTR))
    {
        progress = 15
        alarm[2] = 30
    }
}
if (progress == 16)
{
    if (POS >= string_length(CSTR))
    {
        progress = 17
        alarm[3] = 30
    }
}

