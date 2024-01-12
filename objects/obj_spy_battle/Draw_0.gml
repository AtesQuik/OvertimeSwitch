if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhurt == 0 && enemydead == 0)
{
    draw_sprite_ext(spr_spy_battle, 0, x, (y + (armsangle / 2)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 4, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 3, x, y, 1, 1, (0 + armsangle), image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 2, x, y, 1, 1, (0 - armsangle), image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 1, x, (y + (armsangle / 9)), 1, 1, 0, image_blend, image_alpha)
}
if (enemyhurt == 1 && enemydead == 0)
    draw_sprite(hurtsprite, 0, x, y)
if (enemyhurt == 0 && enemydead == 0 && place_meeting(x, y, obj_enemy_spared))
    draw_sprite(hurtsprite, 0, x, y)
if (enemydead == 1)
    draw_sprite_ext(spr_spy_battle_full, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
if (enemyhealth <= 0 && instance_exists(obj_evade_ground))
    draw_sprite_ext(spr_soul, 0, global.soulxposition, global.soulyposition, 0.5, 0.5, 0, image_blend, image_alpha)
scr_enemy_draw_healthbar()

