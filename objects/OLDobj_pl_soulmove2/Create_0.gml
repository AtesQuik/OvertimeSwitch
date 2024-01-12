progress = 0
movetox = 0
movetoy = 0
spd = (point_distance(x, y, movetox, movetoy) / 60)
dist = point_distance(x, y, (__view_get( e__VW.XView, (0 << 0) ) + 160), (__view_get( e__VW.YView, (0 << 0) ) + 60))
action_set_alarm(60, 1)
action_set_alarm(1, 0)

