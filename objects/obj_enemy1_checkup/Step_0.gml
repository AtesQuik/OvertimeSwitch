if place_meeting(x, y, obj_enemy_down)
    global.enemy1down = 1
if (!(place_meeting(x, y, obj_enemy_down)))
    global.enemy1down = 0
if place_meeting(x, y, obj_enemy_spared)
    global.enemy1spared = 1
if (!(place_meeting(x, y, obj_enemy_spared)))
    global.enemy1spared = 0
if place_meeting(x, y, obj_enemy_spareable)
    global.enemy1spareable = 1
if (!(place_meeting(x, y, obj_enemy_spareable)))
    global.enemy1spareable = 0

