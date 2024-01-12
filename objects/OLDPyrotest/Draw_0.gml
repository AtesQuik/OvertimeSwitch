draw_sprite_ext(spr_soul, image_index, 320, 120, 1, 1, 0, image_blend, image_alpha)
draw_sprite_ext(spr_pyro_body, 0, 320, ((430 + pyroy) + (headbob / 2)), 0.75, 0.75, 0, blackness, image_alpha)
if (progress < 11)
    draw_sprite_ext(spr_pyro_cuteeyes, 0, 320, ((280 + pyroy) + headbob), 0.75, 0.75, 0, image_blend, image_alpha)
else
{
    draw_sprite_ext(spr_pyro_eye, image_index, 278, ((232 + pyroy) + headbob), 0.75, 1.75, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_pyro_eye, image_index, 365, ((234 + pyroy) + headbob), -0.75, 1.75, 0, image_blend, image_alpha)
}
draw_sprite_ext(spr_pyro_gasmask, 0, 320, ((280 + pyroy) + headbob), 0.75, 0.75, 0, blackness, image_alpha)
draw_sprite_stretched_ext(spr_eyelids, 0, lidx, ((lidy + pyroy) + headbob), 173, lidlength, blackness, image_alpha)
draw_sprite_ext(spr_blackscreen, 0, 0, 0, 2, 2, 0, c_black, extrablack)
draw_text(0, 0, string_hash_to_newline(("Lid X " + string(lidx))))
draw_text(0, 18, string_hash_to_newline(("Lid Y " + string(lidy))))

