global.textboxon = 0
if (issaving == 1)
{
    if (!instance_exists(obj_game_saver))
        instance_create(x, y, obj_game_saver)
}

