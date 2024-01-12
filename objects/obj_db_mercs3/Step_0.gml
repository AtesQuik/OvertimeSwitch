if (progress == 0 && (!instance_exists(obj_room_fade_in)))
{
    progress = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    instance_create(350, 150, obj_db_merctalk)
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        STR[0] = "* You know what?#* It's over."
        STR[1] = "* No, I'm telling you right#  now, I'm putting my foot#  down - IT'S OVER."
        STR[2] = "* What drugs are you on#  today?"
        STR[3] = "* Forget it!#* Forget everything,#  I'm leaving!"
    }
}
if (progress == 1 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 2)
        obj_db_merctalk.y = 190
    if (obj_text_box.N == 3)
        obj_db_merctalk.y = 150
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_db_merctalk)
        instance_destroy()
    if (x < 480)
    {
        sprite_index = spr_merc1_right
        image_speed = 0.2
        x += 2
    }
    else
        progress = 2
    with (obj_db_mercs4)
        sprite_index = spr_merc2_right
}
if (progress == 2)
{
    progress = 3
    instance_create(350, 190, obj_db_merctalk)
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        STR[0] = "* Aw, come back here,#  ST3RM4...#* Don't be mad!"
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    with (obj_db_merctalk)
        instance_destroy()
    with (obj_db_mercs4)
    {
        if (x < 500)
        {
            sprite_index = spr_merc2_right
            image_speed = 0.2
            x += 2
        }
        else
            other.progress = 4
    }
}
if (progress == 4)
{
    progress = 5
    with (obj_pro_stopped)
        image_index = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 7
        STR[0] = "* (Sobs)"
        STR[1] = "* I work with idiots."
        STR[2] = "* They're all idiots."
        STR[3] = "* I give up."
        STR[4] = "* Do whatever you want."
        STR[5] = "* You want to hire me?"
        STR[6] = "* Yeah, sure, why not."
        STR[7] = "* I need to lie down#  for a bit."
    }
}
if (progress == 5 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 5)
    {
        with (obj_db_mercs5)
            sprite_index = spr_merc3_right
    }
    if (obj_text_box.N == 6)
    {
        with (obj_db_mercs5)
            sprite_index = spr_merc3_left
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    with (obj_db_mercs5)
    {
        if (x > 50)
        {
            x -= 2
            sprite_index = spr_merc3_left
            image_speed = 0.2
        }
        else
            other.progress = 6
    }
}
if (progress == 6)
{
    progress = 7
    global.dbprogress = 5
    with (obj_pro_stopped)
        instance_destroy()
    with (obj_db_mercs4)
        instance_destroy()
    with (obj_db_mercs5)
        instance_destroy()
    with (instance_create(x, y, obj_music_player))
        musictrack = 141
    instance_destroy()
}

