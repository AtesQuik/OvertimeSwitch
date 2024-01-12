global.playerhealth = global.fullhealth
audio_play_sound(snd_soul_broken, 1, false)
repaired = 1
if (global.seendeathmessage == 0)
{
    global.seendeathmessage = 1
    alarm[3] = 30
}
else
    alarm[4] = 30

