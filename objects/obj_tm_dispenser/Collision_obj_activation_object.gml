with (obj_activation_object)
    instance_destroy()
talkingto = 1
if (!instance_exists(obj_text_box))
{
    if (global.tmdispenser == 0)
    {
        global.tmdispenser = 1
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 6
            STR[0] = "* I AM THE#  DISPENSE-O-MATIC 9000."
            STR[1] = "* I DISPENSE VARIOUS ITEMS#  OF ALL KINDS."
            STR[2] = "* PLEASE DO NOT MISTAKE ME#  FOR THE VEND-A-CURE 9000."
            STR[3] = "* YOU MUSTN'T URINATE ON ME#  IN ORDER TO RECEIVE#  YOUR ITEMS."
            STR[4] = "* YOU JUST PAY WITH#  AUSTRALIUM."
            STR[5] = "* REPEAT:#  PLEASE DO NOT URINATE ON ME."
            STR[6] = "* WOULD YOU LIKE TO#  BUY A BADKIT FOR 20 AUS?#         Yes         No"
            choices = 1
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 0
            STR[0] = "* WOULD YOU LIKE TO#  BUY A BADKIT FOR 20 AUS?#         Yes         No"
            choices = 1
        }
    }
}
