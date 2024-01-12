if (progress == 0)
{
    if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
    {
        with (instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped))
            image_index = 3
        with (obj_protagonist)
            instance_destroy()
    }
    progress = 1
    alarm[0] = 60
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    image_index = 3
    alarm[1] = 30
}
if (progress == 4)
{
    if (x > 460)
        x -= 1
    else
    {
        progress = 5
        sprite_index = spr_dell_stand
        image_index = 3
        image_speed = 0
        alarm[2] = 60
        with (obj_roomchange)
        {
            roomname = 166
            xpos = 160
            ypos = 130
            pdirection = 0
        }
    }
}
if (progress == 6)
{
    if (x > 360)
        x -= 1
    else
    {
        instance_destroy()
        with (obj_pro_stopped)
            instance_destroy()
        global.dellprogress = 2
    }
}

