var __b__;
if instance_exists(obj_db_puzzlesolved)
    deactivated = 1
__b__ = action_if_variable(deactivated, 0, 0)
if __b__
{
    if instance_exists(obj_protagonist)
    {
        if (caught == 0)
        {
            if place_meeting(x, y, obj_protagonist)
            {
                if instance_exists(obj_slippygoo_move)
                {
                    if (turrettype == 0 && obj_protagonist.moving == 0 && obj_slippygoo_move.ismoving == 0)
                    {
                        caught = 1
                        global.battleroom = orangeroom
                    }
                    if (turrettype == 1 && (obj_protagonist.moving == 1 || obj_slippygoo_move.ismoving == 1))
                    {
                        caught = 1
                        global.battleroom = blueroom
                    }
                }
                else
                {
                    if (turrettype == 0 && obj_protagonist.moving == 0)
                    {
                        caught = 1
                        global.battleroom = orangeroom
                    }
                    if (turrettype == 1 && obj_protagonist.moving == 1)
                    {
                        caught = 1
                        global.battleroom = blueroom
                    }
                }
            }
        }
    }
    if instance_exists(obj_protagonist)
    {
        if (caught == 1)
        {
            with (obj_protagonist)
            {
                instance_create(x, y, obj_pro_stopped)
                obj_pro_stopped.image_index = obj_protagonist.prodirection
                global.playerxpos = other.thisx
                global.playerypos = other.thisy
                global.previousroom = room
                instance_create(x, y, obj_fake_soul_battlestart)
                instance_destroy()
            }
            with (obj_menu)
                instance_destroy()
            with (obj_textbox_item)
                instance_destroy()
            with (obj_text_box)
                instance_destroy()
        }
    }
}
else
    action_path_end()

