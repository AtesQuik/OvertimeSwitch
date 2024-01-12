with (obj_activation_object)
    instance_destroy()
if instance_exists(obj_db_tavishtired)
{
    if (holdingbeer == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            STR[0] = "* (It's a beer cooler#  that dispenses beer#  for the road.)"
            STR[1] = "* (Take a cup of beer?)# #         Yes         No"
            choices = 1
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            STR[0] = "* (Regulations state that#  it is forbidden to create#  beer pools in this area.)"
        }
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* (You're not in the mood#  for beer at the moment.)"
    }
}
