var __b__;
__b__ = action_if_variable(global.dustbowlprogress, 0, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 0 && distance_to_object(obj_protagonist) < 160)
    {
        global.talkedtodell = 1
        with (obj_music_player)
            instance_destroy()
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
    }
    if (progress == 1)
    {
        if (distance_to_object(obj_view_parent) > 80)
            obj_view_parent.x += 2
        else
        {
            progress = 3
            alarm[0] = 30
        }
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        progress = 5
        global.playerxpos = obj_pro_stopped.x
        global.playerypos = obj_pro_stopped.y
        global.playerdirection = 1
        if (global.turnedorange == 0)
        {
            global.previousroom = 63
            instance_create(obj_pro_stopped.x, obj_pro_stopped.y, obj_fake_soul_battlestart)
        }
        else
            script_execute(scr_random_encounter)
    }
}

