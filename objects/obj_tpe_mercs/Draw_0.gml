if (merc == 0)
{
    draw_sprite_ext(spr_misha_battle, 2, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 0, x, (y - (shaking / 4)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 1, x, (y - (shaking / 8)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle_head, 2, x, ((y - 10) - (shaking / 8)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_misha_battle, 3, x, (y - (shaking / 2)), 1, 1, 0, image_blend, image_alpha)
}
if (merc == 1)
{
    draw_sprite_ext(spr_scout_legs, leg1, x, ((y + (headshake / 60)) - extraroom), 1, (1 + (headshake / 60)), leg1angle, image_blend, image_alpha)
    draw_sprite_ext(spr_scout_legs, leg2, (x - 1), ((y + (headshake / 60)) - extraroom), -1, (1 + (headshake / 60)), leg2angle, image_blend, image_alpha)
    draw_sprite_ext(spr_scout_arms, arm1, (x + shakex), ((y - extraroom) + shakey), 1, 1, arm1angle, image_blend, image_alpha)
    draw_sprite_ext(spr_scout_arms, arm2, (x + shakex), ((y - extraroom) + shakey), -1, 1, arm2angle, image_blend, image_alpha)
    draw_sprite_ext(spr_scout_torso, 0, (x + shakex), ((y - extraroom) + shakey), 1, 1, image_angle, image_blend, image_alpha)
    draw_sprite_ext(spr_scout_heads, 0, x, ((y - extraroom) + headshake), 1, 1, image_angle, image_blend, image_alpha)
}
if (merc == 2)
{
    draw_sprite_ext(spr_spy_battle, 0, x, (y + (armsangle / 2)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 4, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 3, x, y, 1, 1, (0 + armsangle), image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 2, x, y, 1, 1, (0 - armsangle), image_blend, image_alpha)
    draw_sprite_ext(spr_spy_battle, 1, x, (y + (armsangle / 9)), 1, 1, 0, image_blend, image_alpha)
}
if (merc == 3)
{
    draw_sprite_ext(spr_tavish_battle, 5, x, y, 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_tavish_battle, 4, x, ((y + 1) - (shaking / 6)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_tavish_battle, 3, (x + (shaking / 3)), (y - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_tavish_battle, 2, (x - (shaking / 3)), (y - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_tavish_battle, 1, x, ((y + 2) - (shaking / 3)), 1, 1, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_tavish_heads, 0, x, ((y + 1) - (shaking / 6)), 1, 1, 0, image_blend, image_alpha)
}
if (merc == 4)
    draw_sprite_ext(spr_jane_black, 0, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
if (merc == 5)
{
    draw_sprite_ext(spr_sniper_battle_arms, image_index, x, (y + armsy), image_xscale, image_yscale, 0, image_blend, image_alpha)
    draw_sprite_ext(spr_sniper_battle, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
}
if (merc == 6)
    draw_sprite_ext(spr_sani_battle, 0, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha)
draw_sprite_ext(spr_face_mask, 0, (x + maskx), (y + masky), 1, 1, 0, image_blend, 1)
draw_sprite_ext(spr_face_mask, 0, ((x + maskx) + mask1x), ((y + masky) - mask1y), mask1sc, mask1sc, 0, image_blend, 1)
draw_sprite_ext(spr_face_mask, 0, ((x + maskx) + mask2x), ((y + masky) - mask1y), mask2sc, mask2sc, 0, image_blend, 1)
draw_sprite_ext(spr_face_mask, 0, ((x + maskx) + mask3x), ((y + masky) - mask3y), mask3sc, mask3sc, 0, image_blend, 1)
draw_sprite_ext(spr_face_mask, 0, ((x + maskx) + mask4x), ((y + masky) - mask4y), mask4sc, mask4sc, 0, image_blend, 1)

