if (whichleg == 2)
    draw_sprite_ext(spr_scout_legs, leg2, (x - 1), (y - extraroom), -1, 1, leg2angle, image_blend, image_alpha)
draw_sprite_ext(spr_scout_legs, leg1, x, ((y + (headshake / 60)) - extraroom), 1, (1 + (headshake / 60)), leg1angle, image_blend, image_alpha)
if (whichleg < 2)
    draw_sprite_ext(spr_scout_legs, leg2, (x - 1), ((y + (headshake / 60)) - extraroom), -1, (1 + (headshake / 60)), leg2angle, image_blend, image_alpha)
draw_sprite_ext(spr_scout_arms, arm1, (x + shakex), ((y - extraroom) + shakey), 1, 1, arm1angle, image_blend, image_alpha)
draw_sprite_ext(spr_scout_arms, arm2, (x + shakex), ((y - extraroom) + shakey), -1, 1, arm2angle, image_blend, image_alpha)
draw_sprite_ext(spr_scout_torso, 0, (x + shakex), ((y - extraroom) + shakey), 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_scout_heads, heads, x, ((y - extraroom) + headshake), 1, 1, image_angle, image_blend, image_alpha)
