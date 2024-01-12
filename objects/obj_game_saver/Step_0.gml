if (progress == 0)
{
    if instance_exists(obj_save_box)
    {
        with (obj_save_box)
            instance_destroy()
    }
    counter += 1
    if (counter >= 10)
        progress = 1
}
if (progress == 1)
{
    progress = 2
    script_execute(scr_progress_load)
    script_execute(scr_load_universal)
    script_execute(scr_load_hired_and_killed)
    script_execute(scr_load_story)
}
if (progress == 2)
    instance_destroy()

