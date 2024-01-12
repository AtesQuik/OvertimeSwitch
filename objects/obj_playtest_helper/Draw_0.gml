with (obj_playtest_helper)
{
    draw_set_font(font_standard)
    draw_set_color(c_red)
    if (selection == 0)
    {
        draw_text(__view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), string_hash_to_newline("1 - Variable"))
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 10), string_hash_to_newline("2 - Set position"))
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 20), string_hash_to_newline("3 - Go to room"))
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 30), string_hash_to_newline("4 - Reset HP"))
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 40), string_hash_to_newline((((((("5 - Steps " + string(global.randomsteps)) + " s/ ") + string(global.bonusstepamount)) + " b/ ") + string(global.stepstaken)) + " st")))
    }
    if (selection == 1)
    {
        draw_set_color(c_red)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), string_hash_to_newline("Type Variable:"))
        draw_set_color(c_lime)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 10), string_hash_to_newline(string(variable)))
    }
    if (selection == 2)
    {
        draw_set_color(c_red)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), string_hash_to_newline("Set X position:"))
        draw_set_color(c_lime)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 10), string_hash_to_newline(string(newxpos)))
        if (progress > 0)
        {
            draw_set_color(c_red)
            draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 30), string_hash_to_newline("Set Y position:"))
            draw_set_color(c_lime)
            draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 40), string_hash_to_newline(string(newypos)))
        }
    }
    if (selection == 3)
    {
        draw_set_color(c_red)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), __view_get( e__VW.YView, (0 << 0) ), string_hash_to_newline("Enter new room:"))
        draw_set_color(c_lime)
        draw_text(__view_get( e__VW.XView, (0 << 0) ), (__view_get( e__VW.YView, (0 << 0) ) + 10), string_hash_to_newline(string(roomgoto)))
    }
    draw_set_font(font_standard)
    draw_set_color(c_white)
}

