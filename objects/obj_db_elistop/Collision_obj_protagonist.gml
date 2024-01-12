var __b__;
__b__ = action_if_variable(global.genocide, 1, 0)
if __b__
{
    progress = 1
    with (obj_music_player)
        instance_destroy()
    global.textboxtop = 0
    with (obj_db_disp1)
        image_speed = 0.2
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
}
else
{
    progress = 1
    with (obj_music_player)
        instance_destroy()
    global.textboxtop = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    audio_play_sound(snd_close1, 1, false)
    instance_create(600, 130, obj_db_eli1)
}
