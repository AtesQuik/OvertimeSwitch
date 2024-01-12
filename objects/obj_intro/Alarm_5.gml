script_execute(scr_progress_save)
script_execute(scr_save_universal)
script_execute(scr_save_hired_and_killed)
script_execute(scr_save_story)
if instance_exists(obj_music_player)
{
    with (obj_music_player)
        instance_destroy()
}
alarm[6] = 1

