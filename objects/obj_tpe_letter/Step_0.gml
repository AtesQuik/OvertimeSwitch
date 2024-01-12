if (progress == 0)
{
    if (counter < 120)
    {
        counter += 1
        if (counter == 10)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 20)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 30)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 40)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 55)
            POS += 1
        if (counter == 70)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 80)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 90)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
        if (counter == 100)
        {
            POS += 1
            audio_play_sound(snd_letter, 1, false)
        }
    }
    if (counter >= 120)
    {
        if (!audio_is_playing(snd_letter))
            progress = 1
    }
}
if (progress == 1)
{
    progress = 2
    alarm[0] = 60
}
if (progress == 3)
{
    progress = 4
    room_goto(rm_tpe_gunsnmercs)
}
shakex = irandom_range(-1, 1)
shakey = irandom_range(-1, 1)
shakex2 = irandom_range(-2, 2)
shakey2 = irandom_range(-2, 2)
shakex3 = irandom_range(-4, 4)
shakey3 = irandom_range(-4, 4)
shakex4 = irandom_range(-8, 8)
shakey4 = irandom_range(-8, 8)

