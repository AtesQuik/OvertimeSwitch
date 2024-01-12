if (global.menuon == 1)
{
    draw_sprite(spr_menu, menutype, __view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ))
    draw_set_font(font_menu)
    draw_set_color(c_white)
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 23), (__view_get( e__VW.YView, (0 << 0) ) + 31), string_hash_to_newline(string(global.playername)))
    draw_set_font(font_tiny)
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 23), (__view_get( e__VW.YView, (0 << 0) ) + 47), string_hash_to_newline(("LV   " + string(global.playerlevel))))
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 23), (__view_get( e__VW.YView, (0 << 0) ) + 56), string_hash_to_newline(((("HP   " + string(global.playerhealth)) + " / ") + string(global.fullhealth))))
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 23), (__view_get( e__VW.YView, (0 << 0) ) + 65), string_hash_to_newline(("A    " + string(global.australium))))
    draw_set_font(font_menu)
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 42), (__view_get( e__VW.YView, (0 << 0) ) + 95), string_hash_to_newline("ITEM"))
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 42), (__view_get( e__VW.YView, (0 << 0) ) + 113), string_hash_to_newline("NOTE"))
    draw_text((__view_get( e__VW.XView, (0 << 0) ) + 42), (__view_get( e__VW.YView, (0 << 0) ) + 131), string_hash_to_newline("CELL"))
    draw_set_color(c_white)
    draw_set_font(font_menu)
    if (item == 0 && stat == 0 && cell == 0)
    {
        if (leftypos == 0)
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 32), (__view_get( e__VW.YView, (0 << 0) ) + 103))
        if (leftypos == 1)
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 32), (__view_get( e__VW.YView, (0 << 0) ) + 121))
        if (leftypos == 2)
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 32), (__view_get( e__VW.YView, (0 << 0) ) + 139))
    }
    if (item == 1)
    {
        script_execute(scr_draw_items)
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 116), (__view_get( e__VW.YView, (0 << 0) ) + 181), string_hash_to_newline("USE"))
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 164), (__view_get( e__VW.YView, (0 << 0) ) + 181), string_hash_to_newline("INFO"))
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 222), (__view_get( e__VW.YView, (0 << 0) ) + 181), string_hash_to_newline("DROP"))
        if (itemchosen != 0)
        {
            if (bottomrightpos == 0)
                draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 108), (__view_get( e__VW.YView, (0 << 0) ) + 189))
            if (bottomrightpos == 1)
                draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 156), (__view_get( e__VW.YView, (0 << 0) ) + 189))
            if (bottomrightpos == 2)
                draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 212), (__view_get( e__VW.YView, (0 << 0) ) + 189))
        }
        else
            draw_sprite(spr_soul_small, 0, (__view_get( e__VW.XView, (0 << 0) ) + 108), ((__view_get( e__VW.YView, (0 << 0) ) + 49) + (16 * rightypos)))
    }
    if (stat == 1)
    {
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 42), string_hash_to_newline((("\"" + string(global.playername)) + "\"")))
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 72), string_hash_to_newline(("LV  " + string(global.playerlevel))))
        if ((global.playsecond / 30) < 10)
            draw_text((__view_get( e__VW.XView, (0 << 0) ) + 210), (__view_get( e__VW.YView, (0 << 0) ) + 72), string_hash_to_newline(((string(global.playminute) + ":0") + string(floor((global.playsecond / 30))))))
        else
            draw_text((__view_get( e__VW.XView, (0 << 0) ) + 210), (__view_get( e__VW.YView, (0 << 0) ) + 72), string_hash_to_newline(((string(global.playminute) + ":") + string(floor((global.playsecond / 30))))))
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 88), string_hash_to_newline(((("HP  " + string(global.playerhealth)) + " / ") + string(global.fullhealth))))
        if (global.enemieskilled > 0)
            draw_set_color(c_red)
        else
            draw_set_color(c_white)
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 120), string_hash_to_newline(("KILLED  " + string(global.enemieskilled))))
        if (global.enemiesspared > 0)
            draw_set_color(c_blue)
        else
            draw_set_color(c_white)
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 136), string_hash_to_newline(("HIRED  " + string(global.enemiesspared))))
        draw_set_color(c_white)
        draw_text((__view_get( e__VW.XView, (0 << 0) ) + 107), (__view_get( e__VW.YView, (0 << 0) ) + 166), string_hash_to_newline(("AUSTRALIUM: " + string(global.australium))))
    }
    if (cell == 1)
    {
    }
}

