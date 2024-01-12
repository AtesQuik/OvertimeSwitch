if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
{
    draw_sprite(spr_merc_battle, 12, x, (y - (shaking / 4)))
    draw_sprite(spr_merc_battle, 5, x, y)
    draw_sprite(spr_merc_battle, 6, x, (y - (shaking / 2)))
    draw_sprite(spr_merc_battle, 7, x, (y - (shaking / 2)))
    draw_sprite(spr_merc_battle, 1, x, (y - (shaking / 4)))
    draw_sprite_ext(spr_merc_battle, 8, x, ((y - 10) - (shaking / 2)), 1, 1, 10, image_blend, image_alpha)
    draw_sprite(spr_merc_battle, 10, x, (y - (shaking / 6)))
}
if (enemyhurt == 1 && enemydead == 0)
{
    draw_sprite_ext(spr_merc_battle, 12, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 5, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 6, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 7, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 1, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 8, x, (y - 10), 1, 1, 10, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 10, x, y, 1, 1, 0, image_blend, 0.5)
}
if ((place_meeting(x, y, obj_enemy_spared) || enemyhealth <= 0) && enemydead == 0)
{
    draw_sprite_ext(spr_merc_battle, 12, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 5, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 6, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 7, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 1, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 8, x, (y - 10), 1, 1, 10, image_blend, 0.5)
    draw_sprite_ext(spr_merc_battle, 10, x, y, 1, 1, 0, image_blend, 0.5)
}
if (enemydead == 1)
{
    draw_sprite_ext(spr_merc_battle, 12, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 5, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 6, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 7, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 1, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 8, x, (y - 10), 1, 1, 10, image_blend, image_alpha)
    draw_sprite_ext(spr_merc_battle, 10, x, y, 1, 1, 0, image_blend, image_alpha)
}
scr_enemy_draw_healthbar()

