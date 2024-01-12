if (progress == 0 && instance_exists(obj_protagonist))
{
    if (distance_to_object(obj_protagonist) < 64)
    {
        progress = 1
        global.textboxtop = 0
        with (obj_protagonist)
        {
            global.playerxpos = x
            global.playerypos = y
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
        alarm[0] = 30
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    image_speed = 0.2
    if (x > 160)
        x -= 2
    else if (global.scoutkilled == 0)
        progress = 4
    else
        progress = 8
}
if (progress == 4)
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 104
        MAXSTR = 1
        STR[0] = "* SCOUT?!?"
        STR[1] = "* What on earth are you#  doing outside of your#  Dispenser?"
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    progress = 6
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 2
        STR[0] = "* Oh, hey Doc!"
        STR[1] = "* I've got a gift with#  your name on it!"
        STR[2] = "* I wanted to give it to#  you for stuffing me#  into that Dispenser!"
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    progress = 7
    alarm[1] = 30
}
if (progress == 8)
{
    global.mcover = 1
    with (obj_pro_stopped)
        instance_destroy()
    instance_destroy()
}
if instance_exists(obj_pro_stopped)
{
    if (obj_pro_stopped.y < y)
        depth = (obj_pro_stopped.depth - 1)
    else
        depth = 0
}

