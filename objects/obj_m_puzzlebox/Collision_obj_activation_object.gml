with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_m_puzzledone))
{
    if (obj_protagonist.prodirection == 0 && (!(place_meeting(x, (y + 20), obj_solid))) && (!(place_meeting(x, (y + 20), obj_m_nobox))))
    {
        y += 20
        audio_play_sound(snd_step, 1, false)
    }
    if (obj_protagonist.prodirection == 1 && (!(place_meeting((x + 20), y, obj_solid))) && (!(place_meeting((x + 20), y, obj_m_nobox))))
    {
        x += 20
        audio_play_sound(snd_step, 1, false)
    }
    if (obj_protagonist.prodirection == 2 && (!(place_meeting(x, (y - 20), obj_solid))) && (!(place_meeting(x, (y - 20), obj_m_nobox))))
    {
        y -= 20
        audio_play_sound(snd_step, 1, false)
    }
    if (obj_protagonist.prodirection == 3 && (!(place_meeting((x - 20), y, obj_solid))) && (!(place_meeting((x - 20), y, obj_m_nobox))))
    {
        x -= 20
        audio_play_sound(snd_step, 1, false)
    }
}
