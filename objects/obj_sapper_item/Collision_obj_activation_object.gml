with (obj_activation_object)
    instance_destroy()
if (global.inventoryfull == 0)
{
    global.gotsapper = 1
    script_execute(scr_item_add, "Sapper")
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 3
            STR[0] = "* (It appears that Spy#  dropped some sort of#  radio..?)"
            STR[1] = "* (Seems like it disables#  electronics...better not#  keep it around your phone.)"
            STR[2] = "* (You picked up#  the " + "\"" + "Sapper" + "\"" + "!)"
            STR[3] = "* (Maybe this will come#  in handy later?)"
        }
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (Your backpack is full.#* You can't pick up#  the Sapper.)"
    }
}

