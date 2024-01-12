var __b__;
__b__ = action_if_variable(global.mineprogress, 6, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 2)
    {
        if (obj_db_tavishtired.x < 15)
        {
            obj_db_tavishtired.x += 1
            obj_db_tavishtired.image_speed = 0.1
        }
        else
        {
            obj_db_tavishtired.sprite_index = spr_nh_tavish_stand
            obj_db_tavishtired.image_index = 1
            obj_db_tavishtired.image_speed = 0
            progress = 3
            alarm[1] = 15
        }
    }
    if (progress == 4)
    {
        progress = 5
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 2
            textvoice = 99
            FACESTR[0] = 660
            STR[0] = "* Desert...sun..."
            FACESTR[1] = 660
            STR[1] = "* Too...hot..."
            FACESTR[2] = 660
            STR[2] = "* So...thirsty..."
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        if (obj_db_tavishtired.x < 30)
        {
            obj_db_tavishtired.sprite_index = spr_nh_tavish_right
            obj_db_tavishtired.image_speed = 0.1
            obj_db_tavishtired.x += 0.5
        }
        else
        {
            obj_db_tavishtired.sprite_index = spr_nh_tavish_stand
            obj_db_tavishtired.image_index = 1
            obj_db_tavishtired.image_speed = 0
            alarm[2] = 30
            progress = 6
        }
    }
}

