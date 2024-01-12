if (exhausted == 0)
{
    if (sparingyou == 0)
    {
        if (!instance_exists(obj_dell_handattack))
        {
            draw_sprite(spr_dell_battle_torso, torso, ((x + (extrax / 2)) - moveawayx), (y + (extray / 2)))
            draw_sprite(spr_dell_battle_legs, 0, (x - moveawayx), y)
            draw_sprite(spr_dell_battle_head, heads, ((x + (extrax / 3)) - moveawayx), (y + (extray / 3)))
        }
    }
    if (sparingyou == 1)
    {
        if (!instance_exists(obj_dell_handattack))
        {
            draw_sprite(spr_dell_battle_torso, torso, x, y)
            draw_sprite(spr_dell_battle_legs, 0, x, y)
            draw_sprite(spr_dell_battle_head, heads, x, y)
        }
    }
}
else if (!instance_exists(obj_dell_handattack))
{
    draw_sprite(spr_dell_battle_torso, torso, x, (y + extray))
    draw_sprite(spr_dell_battle_legs, 0, x, y)
    draw_sprite(spr_dell_battle_head, heads, x, (y + (extray / 2)))
}
scr_enemy_draw_healthbar()

