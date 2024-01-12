var __b__, dist, dist2;
__b__ = action_if_variable(goback, 0, 0)
if __b__
{
    dist = point_distance(x, y, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226))
    if (dist > spd)
        move_towards_point((__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), spd)
    else
    {
        speed = 0
        x = (__view_get( e__VW.XView, (0 << 0) ) + 24)
        y = (__view_get( e__VW.YView, (0 << 0) ) + 226)
    }
}
__b__ = action_if_variable(goback, 1, 0)
if __b__
{
    dist2 = (point_distance(x, y, obj_pro_stopped.x, obj_pro_stopped.y) / 15)
    move_towards_point(obj_pro_stopped.x, obj_pro_stopped.y, spd2)
}

