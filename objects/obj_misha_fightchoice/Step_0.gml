if place_meeting(x, y, obj_fake_evade_soul)
{
    if (activated == 0)
    {
        activated = 1
        audio_play_sound(snd_battlemenu_move, 1, false)
    }
    if (activated == 1)
    {
        if keyboard_check_pressed(global.actionkey)
        {
            with (obj_misha_lastbox)
                instance_destroy()
            with (obj_fake_evade_soul)
                instance_destroy()
            with (obj_misha_death)
            {
                peaceordeath = 2
                shootprogress = 1
            }
            instance_destroy()
        }
    }
}
else
    activated = 0

