if (instance_exists(obj_sani_battle) || instance_exists(obj_zeph_battle) || instance_exists(obj_sniper_battle))
    draw_sprite_ext(spr_bossbattle_background, 0, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
else if ((!instance_exists(obj_jane_battle)) && (!instance_exists(obj_spy_battle)) && (!instance_exists(obj_dispenser_battle)) && (!instance_exists(obj_scout_battle)) && (!instance_exists(obj_misha_battle)) && (!instance_exists(obj_dell_battle)) && (!instance_exists(obj_dell_death)) && (!instance_exists(obj_lethal_battle)) && (!instance_exists(obj_hurts_battle)) && (!instance_exists(obj_hunter_battle)))
    draw_sprite_ext(spr_battle_background, 0, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
if instance_exists(obj_misha_battle)
{
    draw_rectangle_colour(240, 210, 320, 240, c_black, c_black, c_black, c_black, 0)
    draw_sprite_ext(spr_mbros_flash, 0, (0 - extend), (0 - extend), 1, 1, 0, make_color_rgb(74, 0, 12), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (-14 - (extend / 2)), (-14 - (extend / 2)), 1, 1, 0, make_color_rgb(136, 0, 21), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (-28 - (extend / 4)), (-28 - (extend / 4)), 1, 1, 0, make_color_rgb(171, 14, 21), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (-42 - (extend / 9)), (-42 - (extend / 9)), 1, 1, 0, make_color_rgb(237, 28, 36), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (320 + extend), (0 - extend), -1, 1, 0, make_color_rgb(0, 0, 74), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (334 + (extend / 2)), (-14 - (extend / 2)), -1, 1, 0, make_color_rgb(40, 40, 190), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (348 + (extend / 4)), (-28 - (extend / 4)), -1, 1, 0, make_color_rgb(70, 70, 210), image_alpha)
    draw_sprite_ext(spr_mbros_flash, 0, (362 + (extend / 9)), (-42 - (extend / 9)), -1, 1, 0, make_color_rgb(110, 110, 210), image_alpha)
}

