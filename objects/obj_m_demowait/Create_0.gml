var __b__;
__b__ = action_if_variable(global.demochase, 1, 0)
if __b__
{
    global.justfled = 0
    x = global.playerxpos
    y = global.playerypos
    if (x < 50)
    {
        instance_destroy()
        instance_create(x, y, obj_m_demowall)
    }
    image_speed = 0
    alarmed = 0
    alarm[0] = (30 + global.drunk)
}
else
    action_kill_object()

