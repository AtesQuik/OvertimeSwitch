if (progress == 1 && (!instance_exists(obj_text_box)))
{
    sprite_index = spr_misha_up
    image_speed = 0.2
    if (y > -10)
        y -= 1
    else
        progress = 2
}
if (progress == 2)
{
    global.meetingprogress = 3
    instance_destroy()
    with (obj_pro_stopped)
        instance_destroy()
}

