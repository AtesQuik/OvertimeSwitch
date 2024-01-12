with (obj_activation_object)
    instance_destroy()
if (global.inventoryfull == 0)
{
    global.crowbarpickedup = 1
    script_execute(scr_item_add, "Crow/bar")
    if (!instance_exists(obj_text_box))
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 10
            STR[0] = "* (You pick up the crowbar.)#* (Finally, a sword worthy#  of a knight like you!)"
            STR[1] = "* (You can see it in front of#  your eyes: opening doors,#  crawling through vents and"
            STR[2] = "* saving the world with it!)"
            STR[3] = "* (People will love you!)"
            STR[4] = "* (The army will hate you!)"
            STR[5] = "* (Aliens will visit earth#  to meet you in person!)"
            STR[6] = "* (You will be a hero,#  stories will be told about#  you, business men will want"
            STR[7] = "* to hire you!)#* (You'll become a legendary#  icon!)"
            STR[8] = "* (...)"
            STR[9] = "* (Actually, the crowbar#  breaks in two.)#* (Oh well.)"
            STR[10] = "* (At least you can still#  use the Derringer.)"
        }
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (Your backpack is full.)#* (You can't pick up#  the Crow/Bar.)"
    }
}
