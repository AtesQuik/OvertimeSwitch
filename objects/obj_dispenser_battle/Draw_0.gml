if ((!(place_meeting(x, y, obj_enemy_spared))) && enemyhealth > 0 && enemyhurt == 0 && enemydead == 0)
{
    if (turned == 0)
    {
        draw_sprite_ext(spr_dispenser_battle, image_index, x, y, 1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_battle_arms, image_index, x, (y + shaking), 1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_fire, image_index, x, (y + shaking), 1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
    }
    else
    {
        draw_sprite_ext(spr_dispenser_battle_arms2, image_index, x, (y + shaking), 1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_fire, image_index, x, (y + shaking), -1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_battle_back, button, x, y, 1, 1, ((shaking - 5) / 2), image_blend, image_alpha)
    }
}
if (enemyhealth <= 0 && enemyhurt == 0 && enemydead == 0)
{
    if (turned == 0)
    {
        draw_sprite_ext(spr_dispenser_battle, 0, x, y, 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_battle_arms, 0, x, y, 1, 1, 0, image_blend, image_alpha)
    }
    else
    {
        draw_sprite_ext(spr_dispenser_battle_arms2, 0, x, y, 1, 1, 0, image_blend, image_alpha)
        draw_sprite_ext(spr_dispenser_battle_back, button, x, y, 1, 1, 0, image_blend, image_alpha)
    }
}
if place_meeting(x, y, obj_enemy_spared)
    draw_sprite(downsprite, 1, x, y)
if (enemyhurt == 1)
{
    if (turned == 0)
    {
        draw_sprite_ext(spr_dispenser_battle, 0, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_dispenser_battle_arms, 0, x, y, 1, 1, 0, image_blend, 0.5)
    }
    else
    {
        draw_sprite_ext(spr_dispenser_battle_arms2, 0, x, y, 1, 1, 0, image_blend, 0.5)
        draw_sprite_ext(spr_dispenser_battle_back, button, x, y, 1, 1, 0, image_blend, 0.5)
    }
}
if (enemydead == 1)
    draw_sprite_ext(spr_dispenser_battle, image_index, x, y, 1, 1, 0, image_blend, image_alpha)
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 1, 1, 0, image_blend, blackalpha)
scr_enemy_draw_healthbar()

