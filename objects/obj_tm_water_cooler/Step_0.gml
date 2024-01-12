if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        STR[0] = "HELLO, INTRUDER!#PLEASE ENJOY THE#REFRESHMENTS!"
        STR[1] = "THANK YOU, AND HAVE#AN UNSAFE AND#UNPRODUCTIVE DAY!"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    if (global.genocide == 0)
    {
        progress = 0
        with (obj_pro_stopped)
            instance_destroy()
    }
    else
    {
        progress = 3
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            STR[0] = "* There is something#  written below that:"
        }
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        STR[0] = "* im warning ya, pardner."
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 0
    with (obj_pro_stopped)
        instance_destroy()
}

