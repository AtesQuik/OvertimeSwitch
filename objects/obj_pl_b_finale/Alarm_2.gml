if (nomoreheals == 0)
{
    alarm[2] = 120
    with (obj_pl_f_balloonicorn)
    {
        if (balloonicolor == 16776960)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
            {
                image_index = 1
                sprite_index = spr_b_arrow
            }
        }
        if (balloonicolor == 65535)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
            {
                image_index = 1
                sprite_index = spr_b_nail
                image_xscale = 2
                image_yscale = 2
            }
        }
        if (balloonicolor == 8388736)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
            {
                image_index = 1
                sprite_index = spr_b_tranq_dart
                image_xscale = 2
                image_yscale = 2
            }
        }
        if (balloonicolor == 4235519)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
            {
                image_index = 1
                sprite_index = spr_b_rocket
            }
        }
        if (balloonicolor == 16711680)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
                sprite_index = spr_b_dynamite_saved
        }
        if (ballooney == 1)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
            {
                sprite_index = spr_beer_bottle
                image_xscale = 2
                image_yscale = 2
            }
        }
        if (balloonicolor == 65280)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
                sprite_index = spr_b_sandvich
        }
        if (balloonicolor == 16711935)
        {
            with (instance_create(x, y, obj_pl_f_balloonihelp))
                sprite_index = spr_b_gearsaved
        }
    }
}

