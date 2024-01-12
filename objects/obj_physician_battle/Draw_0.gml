if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
{
    draw_sprite_ext(spr_physician_battle, 0, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_physician_battle, 1, (x + shakex), ((y - shaking) - shakey), 1, 1, 0, image_blend, image_alpha)
}
if (place_meeting(x, y, obj_enemy_spared) && enemydead == 0)
    draw_sprite(downsprite, image_index, x, y)
if (enemyhurt == 1 && enemydead == 0)
{
    draw_sprite_ext(spr_physician_battle, 0, x, y, 1, 1, 0, image_blend, 0.5)
    draw_sprite_ext(spr_physician_battle, 1, (x + shakex), ((y - shaking) - shakey), 1, 1, 0, image_blend, 0.5)
}
if (enemyhurt == 0 && enemydead == 1)
    draw_sprite_ext(downsprite, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
scr_enemy_draw_healthbar()

