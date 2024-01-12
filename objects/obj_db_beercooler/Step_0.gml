if (global.textboxchoice == 1)
{
    with (obj_text_box)
        instance_destroy()
    global.textboxchoice = 0
    holdingbeer = 1
    instance_create(0, 0, obj_db_drawbeer)
}
if (global.textboxchoice == 2)
{
    with (obj_text_box)
        instance_destroy()
    global.textboxchoice = 0
    holdingbeer = 0
}

