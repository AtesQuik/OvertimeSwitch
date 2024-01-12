with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    if (global.genocide == 0)
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 5
            STR[0] = "* Who do you suppose left#  all this radioactive waste#  down here?"
            STR[1] = "* And why? WHY?!?"
            STR[2] = "* Why can't we find a way#  to safely dispose of#  radioactive waste?"
            STR[3] = "* What kind of planet#  will we be leaving to#  our children?"
            STR[4] = "* And our children's#  children, and..."
            STR[5] = "* Oh, the humanity!"
        }
    }
    else
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 2
            STR[0] = "* You may be small, with#  small guts..."
            STR[1] = "* ...but if you don't keep#  walking, I'm going to#  rip and tear you apart."
            STR[2] = "* That'd leave a much better#  future to our children."
        }
    }
}
