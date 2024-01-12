if (progress == 0)
{
    if (whitescreen < 1)
        whitescreen += 0.05
    else
    {
        progress = 1
        alarm[2] = 30
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    instance_create(420, 90, obj_db_disp1)
    with (obj_pro_stopped)
    {
        x = 360
        y = 130
        image_index = 2
    }
    with (obj_view_parent)
    {
        x = 360
        y = 130
    }
    with (obj_db_eli1)
        image_index = 2
    global.dbprogress = 1
    progress = 3
    alarm[0] = 60
}
if (progress == 4)
{
    global.textboxtop = 0
    if (whitescreen > 0)
        whitescreen -= 0.1
    else
    {
        progress = 5
        alarm[1] = 30
    }
}
if instance_exists(obj_text_box)
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}

