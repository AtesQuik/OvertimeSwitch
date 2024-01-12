draw_sprite_ext(spr_scout_legs, 0, x, (y + (headshake / 60)), -1, (1 + (headshake / 60)), 0, scoutblend, scoutalpha)
draw_sprite_ext(spr_scout_legs, 0, x, (y + (headshake / 60)), 1, (1 + (headshake / 60)), 0, scoutblend, scoutalpha)
draw_sprite_ext(spr_scout_arms, 0, (x + shakex), (y + shakey), 1, 1, 0, scoutblend, scoutalpha)
draw_sprite_ext(spr_scout_arms, 0, (x + shakex), (y + shakey), -1, 1, 0, scoutblend, scoutalpha)
draw_sprite_ext(spr_scout_torso, 0, (x + shakex), (y + shakey), 1, 1, 0, scoutblend, scoutalpha)
draw_sprite_ext(spr_scout_heads, 0, x, (y + headshake), 1, 1, 0, scoutblend, scoutalpha)

