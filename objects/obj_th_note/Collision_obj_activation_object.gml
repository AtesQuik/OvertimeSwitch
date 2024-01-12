with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        STR[0] = "* (It's a note from Eli.)"
        STR[1] = "* " + "\"" + "Today sure is a wonderful#  day to clean out my#  BROOM CLOSET!" + "\""
        STR[2] = "* " + "\"" + "I just hope that NOBODY#  walks into THE BROOM CLOSET#  while I am cleaning it!" + "\""
        STR[3] = "* (The note ends with#  instructions on how to#  enter the broom closet.)"
        STR[4] = "* (You don't need those.)"
    }
}

