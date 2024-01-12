if (x > 110 && x < 200)
{
    if (bottomortop == 0)
    {
        draw_sprite(spr_dell_wrench, 0, x, y)
        draw_sprite_stretched(spr_dell_wrench, 1, x, (y + 10), 10, (192 - (y + 10)))
    }
    if (bottomortop == 1)
    {
        draw_sprite(spr_dell_wrench, 2, x, (y + 90))
        draw_sprite_stretched(spr_dell_wrench, 1, x, 128, 10, ((y + 90) - 128))
    }
}
draw_set_color(c_black)
if (movedirection != 0)
{
    draw_rectangle(202, 112, 212, 195, false)
    draw_rectangle(117, 112, 107, 195, false)
    draw_rectangle(108, 196, 201, 214, false)
    draw_rectangle(108, 108, 201, 124, false)
}
if (bottomortop == 0 && yspeed != 0)
    draw_rectangle(118, 196, 201, 211, false)
if (bottomortop == 1 && yspeed != 0)
    draw_rectangle(118, 110, 201, 124, false)
draw_set_color(c_white)

