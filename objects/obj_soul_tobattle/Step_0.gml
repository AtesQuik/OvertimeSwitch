var dist;
dist = point_distance(x, y, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226))
if (dist > spd)
    move_towards_point((__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), spd)
else
{
    speed = 0
    x = (__view_get( e__VW.XView, (0 << 0) ) + 24)
    y = (__view_get( e__VW.YView, (0 << 0) ) + 226)
}

