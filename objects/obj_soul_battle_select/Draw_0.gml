if (!instance_exists(obj_dell_phasethree))
{
    if (global.battlemenuoffline == 0)
        draw_sprite_ext(spr_bottom_row_text, soul_bottomxpos, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
    else
        draw_sprite_ext(spr_bottom_row_text, 4, 0, 0, 0.5, 0.5, 0, image_blend, image_alpha)
}
if (instance_exists(obj_misha_battle) || global.playername == "Jacket" || global.playername == "Batter")
    draw_rectangle_colour(240, 210, 320, 240, c_black, c_black, c_black, c_black, 0)
if (global.battlemenuoffline == 0)
{
    draw_set_font(font_standard)
    if (soul_ypos == 0)
    {
        if (soul_bottomxpos == 0)
            draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 24), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
        if (soul_bottomxpos == 1)
            draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 100), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
        if (soul_bottomxpos == 2)
            draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 180), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
        if (soul_bottomxpos == 3)
            draw_sprite_ext(spr_soul, 0, (__view_get( e__VW.XView, (0 << 0) ) + 258), (__view_get( e__VW.YView, (0 << 0) ) + 226), 0.5, 0.5, 0, image_blend, image_alpha)
    }
    else if (global.flee == 0)
        draw_sprite_ext(spr_soul, 0, ((__view_get( e__VW.XView, (0 << 0) ) + 36) + (128 * soul_topxpos)), ((__view_get( e__VW.YView, (0 << 0) ) + 126) + (16 * soul_ypos)), 0.5, 0.5, 0, image_blend, image_alpha)
    if (fightselected == 1)
    {
        if (global.enemy1spareable == 1 && (!instance_exists(obj_dell_battle)))
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        if (global.enemy1down == 0 && global.enemy1spared == 0)
        {
            if (global.enemyamount > 0)
                draw_text(49, 135, string_hash_to_newline(("* " + string(global.battleenemy1))))
        }
        draw_set_color(c_white)
        if (global.enemy2spareable == 1 && (!instance_exists(obj_dell_battle)))
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        if (global.enemy2down == 0 && global.enemy2spared == 0)
        {
            if (global.enemyamount > 1)
                draw_text(49, 151, string_hash_to_newline(("* " + string(global.battleenemy2))))
        }
        draw_set_color(c_white)
        if (global.enemy3spareable == 1 && (!instance_exists(obj_dell_battle)))
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        if (global.enemy3down == 0 && global.enemy3spared == 0)
        {
            if (global.enemyamount > 2)
                draw_text(49, 167, string_hash_to_newline(("* " + string(global.battleenemy3))))
        }
        draw_set_color(c_white)
    }
    if (actselected == 1)
    {
        if (acting == 0)
        {
            if (global.enemy1spareable == 1 && (!instance_exists(obj_dell_battle)))
                draw_set_color(c_yellow)
            else
                draw_set_color(c_white)
            if (global.enemy1down == 0 && global.enemy1spared == 0)
            {
                if (global.enemyamount > 0)
                    draw_text(49, 135, string_hash_to_newline(("* " + string(global.battleenemy1))))
            }
            draw_set_color(c_white)
            if (global.enemy2spareable == 1 && (!instance_exists(obj_dell_battle)))
                draw_set_color(c_yellow)
            else
                draw_set_color(c_white)
            if (global.enemy2down == 0 && global.enemy2spared == 0)
            {
                if (global.enemyamount > 1)
                    draw_text(49, 151, string_hash_to_newline(("* " + string(global.battleenemy2))))
            }
            draw_set_color(c_white)
            if (global.enemy3spareable == 1 && (!instance_exists(obj_dell_battle)))
                draw_set_color(c_yellow)
            else
                draw_set_color(c_white)
            if (global.enemy3down == 0 && global.enemy3spared == 0)
            {
                if (global.enemyamount > 2)
                    draw_text(49, 167, string_hash_to_newline(("* " + string(global.battleenemy3))))
            }
            draw_set_color(c_white)
        }
    }
    if (itemselected == 1)
    {
        if (itempage == 0)
        {
            if (!instance_exists(obj_hurts_battle))
            {
                if (global.item1 != 0)
                    draw_text(50, 135, string_hash_to_newline(("* " + string(global.item1))))
                if (global.item2 != 0)
                    draw_text(178, 135, string_hash_to_newline(("* " + string(global.item2))))
                if (global.item3 != 0)
                    draw_text(50, 151, string_hash_to_newline(("* " + string(global.item3))))
                if (global.item4 != 0)
                    draw_text(178, 151, string_hash_to_newline(("* " + string(global.item4))))
                draw_text(193, 167, string_hash_to_newline("PAGE 1"))
            }
            else
            {
                if (global.item1 != 0)
                    draw_text(50, 135, string_hash_to_newline("* it hurts"))
                if (global.item2 != 0)
                    draw_text(178, 135, string_hash_to_newline("* it hurts"))
                if (global.item3 != 0)
                    draw_text(50, 151, string_hash_to_newline("* it hurts"))
                if (global.item4 != 0)
                    draw_text(178, 151, string_hash_to_newline("* it hurts"))
                draw_text(193, 167, string_hash_to_newline("it hurts"))
            }
        }
        else if (itempage == 1)
        {
            if (!instance_exists(obj_hurts_battle))
            {
                if (global.item5 != 0)
                    draw_text(50, 135, string_hash_to_newline(("* " + string(global.item5))))
                if (global.item6 != 0)
                    draw_text(178, 135, string_hash_to_newline(("* " + string(global.item6))))
                if (global.item7 != 0)
                    draw_text(50, 151, string_hash_to_newline(("* " + string(global.item7))))
                if (global.item8 != 0)
                    draw_text(178, 151, string_hash_to_newline(("* " + string(global.item8))))
                draw_text(193, 167, string_hash_to_newline("PAGE 2"))
            }
            else
            {
                if (global.item5 != 0)
                    draw_text(50, 135, string_hash_to_newline("* it hurts"))
                if (global.item6 != 0)
                    draw_text(178, 135, string_hash_to_newline("* it hurts"))
                if (global.item7 != 0)
                    draw_text(50, 151, string_hash_to_newline("* it hurts"))
                if (global.item8 != 0)
                    draw_text(178, 151, string_hash_to_newline("* it hurts"))
                draw_text(193, 167, string_hash_to_newline("it hurts"))
            }
        }
    }
    if (mercyselected == 1)
    {
        if (global.fleedisabled == 0)
            draw_text(49, 151, string_hash_to_newline("* Flee"))
        if ((!instance_exists(obj_dell_battle)) && ((global.enemy1spareable == 1 && global.enemy1down == 0) || (global.enemy2spareable == 1 && global.enemy2down == 0) || (global.enemy3spareable == 1 && global.enemy3down == 0)))
            draw_set_color(c_yellow)
        else
            draw_set_color(c_white)
        if (!instance_exists(obj_hurts_battle))
            draw_text(49, 135, string_hash_to_newline("* Hire"))
        else
            draw_text(49, 135, string_hash_to_newline("* it hurts"))
        draw_set_color(c_white)
    }
}

