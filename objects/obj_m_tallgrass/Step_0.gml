if place_meeting(x, y, obj_protagonist)
{
    if (image_index == 0)
    {
        image_index = 1
        audio_play_sound(snd_tallgrass, 1, false)
    }
}
else
    image_index = 0

