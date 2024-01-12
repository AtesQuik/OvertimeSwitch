if (!instance_exists(obj_m_demointro))
{
    if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
    {
        draw_sprite_ext(spr_tavish_battle, 5, x, y, 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_tavish_battle, 4, x, ((y + 1) - (shaking / 6)), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_tavish_battle, 3, (x + (shaking / 3)), (y - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_tavish_battle, 2, (x - (shaking / 3)), (y - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_tavish_battle, 1, x, ((y + 2) - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_tavish_heads, head, x, ((y + 1) - (shaking / 6)), 1, 1, 0, image_blend, image_alpha)
    }
    if (enemyhurt == 1 && enemydead == 0 && (!(place_meeting(x, y, obj_enemy_spareable))))
    {
        draw_sprite_ext(spr_tavish_battle, 5, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_tavish_battle, 4, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_tavish_battle, 3, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_tavish_battle, 2, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_tavish_battle, 1, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_tavish_heads, head, x, y, 1, 1, 0, image_blend, 0.5)
    }
    if (enemydead == 1)
        draw_sprite_ext(spr_tavish_battle_down, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
    if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth <= 0 && enemyhurt == 0 && enemydead == 0)
        draw_sprite_ext(spr_tavish_battle_down, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
}
if (enemyhealth <= 0 && instance_exists(obj_evade_ground))
    draw_sprite_ext(spr_soul, 0, global.soulxposition, global.soulyposition, 0.5, 0.5, 0, image_blend, image_alpha)
scr_enemy_draw_healthbar()

