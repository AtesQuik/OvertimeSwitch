audio_play_sound(snd_activate_save, 1, false)
with (obj_activation_object)
    instance_destroy()
if ((!instance_exists(obj_save_box)) && (!instance_exists(obj_game_saver)))
{
    instance_create(x, y, obj_save_box)
    with (obj_save_box)
    {
        MAXSTR = other.stringamount
        STR[0] = other.string1
        STR[1] = other.string2
        STR[2] = other.string3
        STR[3] = other.string4
    }
}
