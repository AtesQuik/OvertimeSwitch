if (walking == 0)
    draw_sprite(sprite_index, prodirection, x, y)
else
    draw_sprite(sprite_index, image_index, x, y)
draw_sprite(spr_scout_stand, 0, 160, 55)
draw_sprite(spr_spy_stand, 0, 190, 65)
draw_sprite(spr_sniper, 1, 105, 60)
draw_sprite(spr_eli_stand, elidir, 135, 75)
draw_sprite(spr_na_tavish_stand, 0, 215, 70)
draw_sprite(spr_jane_stand, 3, 220, 110)
draw_sprite(spr_dell_stand, delldir, 225, 135)
draw_sprite(spr_misha_stand, 1, 90, 110)
draw_sprite(spr_sani_stand, 1, 100, 140)
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 1, 1, 0, image_blend, blackness)
draw_sprite_ext(spr_whitescreen, 0, 0, 0, 1, 1, 0, image_blend, whitescreen)

