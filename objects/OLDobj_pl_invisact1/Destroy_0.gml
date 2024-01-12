if (deletenow == 1)
{
    if place_meeting(x, y, obj_pl_gear)
    {
        with (other.id)
            instance_destroy()
    }
    if (movedirection == 0)
    {
        with (instance_create(-440, y, obj_pl_act))
        {
            spin = 1
            xmovespd = 0.5
        }
    }
    if (movedirection == 1)
    {
        with (instance_create(1080, y, obj_pl_act))
        {
            spin = -1
            xmovespd = -0.5
            image_angle = 45
        }
    }
}

