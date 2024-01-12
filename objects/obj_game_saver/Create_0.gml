progress = 0
counter = 0
global.textboxon = 0
if instance_exists(obj_save_box)
{
    with (obj_save_box)
        instance_destroy()
}
script_execute(scr_save_game)

