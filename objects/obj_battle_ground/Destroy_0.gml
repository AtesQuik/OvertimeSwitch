if (global.enemyamount == 1 && (global.enemy1down == 1 || global.enemy1spared == 1))
    script_execute(scr_battle_end)
else if (global.enemyamount == 2 && (global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1))
    script_execute(scr_battle_end)
else if (global.enemyamount == 3 && (global.enemy1down == 1 || global.enemy1spared == 1) && (global.enemy2down == 1 || global.enemy2spared == 1) && (global.enemy3down == 1 || global.enemy3spared == 1))
    script_execute(scr_battle_end)
else
    instance_create(0, 0, obj_box_to_evade)

