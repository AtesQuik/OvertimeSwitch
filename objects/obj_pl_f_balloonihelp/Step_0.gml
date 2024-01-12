if (image_alpha < 1)
    image_alpha += 0.05
if (sprite_index == spr_b_dynamite_saved || sprite_index == spr_beer_bottle || sprite_index == spr_b_sandvich || sprite_index == spr_b_gearsaved)
    image_index = 0
if (sprite_index != spr_b_arrow && sprite_index != spr_b_tranq_dart && sprite_index != spr_b_nail && sprite_index != spr_b_rocket)
{
    if (leftorright == 0)
    {
        if (image_angle < 359)
            image_angle += 1
        else
            image_angle = 0
    }
    if (leftorright == 1)
    {
        if (image_angle > 1)
            image_angle -= 1
        else
            image_angle = 360
    }
}
if (sprite_index == spr_b_tranq_dart || sprite_index == spr_b_nail || sprite_index == spr_beer_bottle)
{
    if (image_xscale != 2 && image_yscale != 2)
    {
        image_xscale = 2
        image_yscale = 2
    }
}

