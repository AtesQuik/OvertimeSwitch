with (obj_activation_object)
    instance_destroy()
if (global.inventoryfull == 0)
{
    global.syringe2pickedup = 1
    script_execute(scr_item_add, "Syringe")
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 0
            STR[0] = "* (You pick up a dirty#  syringe. Surely, this#  will heal you!)"
        }
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (Your backpack is full.)#* (You can't pick up#  the Syringe.)"
    }
}
