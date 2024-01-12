var __b__;
__b__ = action_if_variable(global.hospitalprogress, 38, 2)
if __b__
    action_kill_object()
else
{
    if (go == 1 && (!instance_exists(obj_text_box)))
    {
        go = 2
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 0
            STR[0] = "* You received a BADKIT!#* Replenishes your HP,#  but at what cost?"
        }
        script_execute(scr_item_add, "Badkit")
    }
    if (go == 2 && (!instance_exists(obj_text_box)))
    {
        if (x > 996)
        {
            x -= 2
            image_speed = 0.2
            sprite_index = spr_sani_left
        }
        else
            go = 3
    }
    if (go == 3)
    {
        if (distance_to_object(obj_pro_stopped) > 180)
        {
            global.hospitalprogress = 39
            audio_play_sound(snd_close1, 1, false)
        }
        else
        {
            y += 2
            sprite_index = spr_sani_down
            image_speed = 0.2
        }
    }
    if (global.hospitalprogress < 39)
    {
        if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
        {
            instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
            with (obj_pro_stopped)
                image_index = 2
            with (obj_protagonist)
                instance_destroy()
        }
    }
    else
    {
        with (obj_pro_stopped)
            instance_destroy()
    }
}

