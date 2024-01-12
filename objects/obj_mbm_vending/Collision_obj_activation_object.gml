with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    if global.vendingmachine
    {
        global.vendingmachine = 1
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            STR[0] = "* (It's a vending machine#  dispensing Badkits.)"
            STR[1] = "* (Do you want to buy a#  Badkit for 70 AUS?)#         Yes buy     No buy"
            choices = 1
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            STR[0] = "* (Do you want to buy a#  Badkit for 70 AUS?)#         Yes buy     No buy"
            choices = 1
        }
    }
}
