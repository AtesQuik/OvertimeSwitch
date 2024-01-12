if (handdirection == 0)
    draw_sprite(spr_db_handdown, image_index, x, y)
if (handdirection == 1)
    draw_sprite(spr_db_handright, image_index, x, y)
if (handdirection == 2)
    draw_sprite(spr_db_handup, image_index, x, y)
if (handdirection == 3)
    draw_sprite(spr_db_handright, image_index, x, y)
if (eyesorno == 0)
    draw_sprite(spr_dell_battle_head, heads, (x + extrax), (y + extray))
else
    draw_sprite(spr_dell_battle_eyes, image_index, (x + extrax), (y + extray))

