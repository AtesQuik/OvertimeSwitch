if place_meeting(x, y, obj_enemy_down)
    global.enemy2down = 1
if (!(place_meeting(x, y, obj_enemy_down)))
    global.enemy2down = 0
if place_meeting(x, y, obj_enemy_spared)
    global.enemy2spared = 1
if (!(place_meeting(x, y, obj_enemy_spared)))
    global.enemy2spared = 0
if place_meeting(x, y, obj_enemy_spareable)
    global.enemy2spareable = 1
if (!(place_meeting(x, y, obj_enemy_spareable)))
    global.enemy2spareable = 0

