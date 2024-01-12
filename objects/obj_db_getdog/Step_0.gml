if (global.textboxchoice == 1)
{
    global.textboxchoice = 0
    global.gotdog = 1
    script_execute(scr_item_add, "HotDog")
    instance_destroy()
    with (obj_text_box)
        instance_destroy()
}
if (global.textboxchoice == 2)
{
    global.textboxchoice = 0
    with (obj_text_box)
        instance_destroy()
}

