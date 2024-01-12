if place_meeting(x, y, obj_enemy_down)
    global.enemy3down = 1
if (!(place_meeting(x, y, obj_enemy_down)))
    global.enemy3down = 0
if place_meeting(x, y, obj_enemy_spared)
    global.enemy3spared = 1
if (!(place_meeting(x, y, obj_enemy_spared)))
    global.enemy3spared = 0
if place_meeting(x, y, obj_enemy_spareable)
    global.enemy3spareable = 1
if (!(place_meeting(x, y, obj_enemy_spareable)))
    global.enemy3spareable = 0

