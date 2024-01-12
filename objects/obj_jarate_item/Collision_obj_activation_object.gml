with (obj_activation_object)
    instance_destroy()
if (global.inventoryfull == 0)
{
    global.jaratepickedup = 1
    script_execute(scr_item_add, "Jarate")
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 2
            STR[0] = "* (Looks like Sniper#  dropped his jar of...#  ...you know.)"
            STR[1] = "* (You picked up the#  " + "\"" + "Jarate" + "\"" + "!)"
            STR[2] = "* (Will this come in#  handy later on?)"
        }
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (Your backpack is full.#* You can't pick up#  the Jarate.)"
    }
}

