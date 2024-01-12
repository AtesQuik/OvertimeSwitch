if (x < 160)
    move_towards_point((x + random_range(10, -20)), 320, 6)
else
    move_towards_point((x + random_range(-10, 20)), 320, 6)
damagedone = 3
alarm[0] = 45
image_speed = 0
damagedone = 2
action_sound(34, 0)

