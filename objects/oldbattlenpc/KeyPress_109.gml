if ((!(place_meeting(x, y, obj_enemy_down))) && (!(place_meeting(x, y, obj_enemy_spared))))
    global.evadetime = 180
else if (instance_number(obj_green_goo) == 1)
    global.evadetime = global.evadeamount

