damagedone = 0
fadeout = 0
if (x < 160)
    leftorright = 0
else
    leftorright = 1
image_angle = point_direction(x, y, global.soulxposition, global.soulyposition)
move_towards_point(global.soulxposition, global.soulyposition, 10)

