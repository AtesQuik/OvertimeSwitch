if (newone == 1)
{
    if (movedirection == 0)
    {
        if (!(place_meeting(-440, y, obj_pl_act)))
        {
            with (instance_create(-440, y, obj_pl_gear))
            {
                saved = other.saved
                leftorright = other.leftorright
                movedirection = other.movedirection
                helpthere = other.helpthere
                helpprogress = other.helpprogress
                progress = 1
                image_angle = other.image_angle
            }
        }
    }
    if (movedirection == 1)
    {
        if (!(place_meeting(1080, y, obj_pl_act)))
        {
            with (instance_create(1080, y, obj_pl_gear))
            {
                saved = other.saved
                leftorright = other.leftorright
                movedirection = other.movedirection
                helpthere = other.helpthere
                helpprogress = other.helpprogress
                progress = 1
                image_angle = other.image_angle
            }
        }
    }
}

