if (y >= 120 && y <= 190)
{
    if (leftorright == 0)
    {
        draw_sprite(spr_dell_sidewrench, 2, (x + 90), y)
        draw_sprite_stretched(spr_dell_sidewrench, 1, 121, y, ((x + 90) - 121), 10)
    }
    if (leftorright == 1)
    {
        draw_sprite(spr_dell_sidewrench, 0, x, y)
        draw_sprite_stretched(spr_dell_sidewrench, 1, (x + 10), y, (199 - (x + 10)), 10)
    }
}
draw_set_color(c_black)
if (movedirection != 0)
{
    draw_rectangle(98, 195, 220, 211, false)
    draw_rectangle(98, 110, 221, 124, false)
    draw_rectangle(202, 112, 215, 195, false)
    draw_rectangle(117, 112, 104, 195, false)
}
if (leftorright == 0 && xspeed != 0)
    draw_rectangle(202, 125, 212, 195, false)
if (leftorright == 1 && xspeed != 0)
    draw_rectangle(117, 125, 107, 195, false)
draw_set_color(c_white)

