var __b__;
__b__ = action_if_variable(global.thundermountainprogress, 3, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 0 && place_meeting(x, y, obj_protagonist))
    {
        progress = 1
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 3
            instance_destroy()
        }
    }
    if (progress == 1)
    {
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 1
            textvoice = 86
            FACESTR[0] = 645
            STR[0] = "THERE ARE NO MINES#THAT WAY..."
            FACESTR[1] = 643
            STR[1] = "BUT THAT DOESN'T#MEAN YOU CAN LEAVE!"
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        if (obj_pro_stopped.x < (x + 32))
        {
            with (obj_pro_stopped)
            {
                sprite_index = spr_pro_right
                image_speed = 0.2
                x += 3
            }
        }
        else
        {
            with (obj_pro_stopped)
                instance_destroy()
            progress = 0
        }
    }
}

