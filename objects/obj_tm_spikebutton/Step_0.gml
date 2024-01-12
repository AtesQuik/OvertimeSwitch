if (global.tmspikes2up == 1)
{
    if place_meeting(x, y, obj_protagonist)
    {
        audio_play_sound(snd_step, 1, false)
        audio_play_sound(snd_close1, 1, false)
        global.tmspikes2up = 0
        image_index = 1
    }
}
else
    image_index = 1

