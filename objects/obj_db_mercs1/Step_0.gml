if (progress == 0 && distance_to_object(obj_protagonist) < 64)
{
    progress = 1
    with (obj_music_player)
        instance_destroy()
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    instance_create(350, 150, obj_db_merctalk)
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        STR[0] = "* Heeeyyy there."
        STR[1] = "* Look, uh, you need to#  kind of get the hell out#  of here."
        STR[2] = "* Like, our leader apparently#  just saw that criminal we#  are looking for."
        STR[3] = "* Now we're telling everyone#  to leave, because it's#  gonna be a bloodbath."
        STR[4] = "* So, yeah, just, like#  just leave for a bit until#  we're done here."
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_db_merctalk)
        instance_destroy()
    with (obj_pro_stopped)
        instance_destroy()
    progress = 2
}
if (progress == 2 && distance_to_object(obj_protagonist) > 72)
{
    progress = 3
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 3
        instance_destroy()
    }
}
if (progress == 3)
{
    progress = 4
    instance_create(50, 170, obj_db_mercs2)
}
if (progress == 4)
{
    with (obj_db_mercs2)
    {
        if (x < 170)
            x += 2
        else
        {
            image_index = 0
            image_speed = 0
            other.progress = 5
        }
    }
}
if (progress == 5)
{
    instance_create(obj_db_mercs2.x, (obj_db_mercs2.y - 24), obj_db_merc_ex)
    progress = 7
}
if (progress == 7 && (!instance_exists(obj_db_merc_ex)))
{
    progress = 8
    instance_create(obj_db_mercs2.x, obj_db_mercs2.y, obj_db_merctalk)
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 16
        STR[0] = "* AHA!"
        STR[1] = "* There's the criminal!#* You found her!"
        STR[2] = "* Uh, found who?"
        STR[3] = "* The...criminal."
        STR[4] = "* Like, where?"
        STR[5] = "* IN FRONT OF YOU!"
        STR[6] = "* You mean her?"
        STR[7] = "* YES, OF COURSE!#* WHO ELSE WOULD I BE#  TALKING ABOUT?"
        STR[8] = "* Haha! Oh man, this is#  embarassing, isn't it?"
        STR[9] = "* My goodness, you two are#  the biggest idiots I have#  ever worked with."
        STR[10] = "* HALT, CRIMINAL!"
        STR[11] = "* I AM 4O4!"
        STR[12] = "* And I am, uh, ST3RM4."
        STR[13] = "* I'm J4R."
        STR[14] = "* Together, we are the#  MIGHTY MURDERING#  MERCENARIES."
        STR[15] = "* We were hired by Redmond#  and Blutarch Mann to take#  you down!"
        STR[16] = "* And we WILL bring you#  to justice!"
    }
}
if (progress == 8 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 0)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
    if (obj_text_box.N == 2)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 150
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 3)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
    if (obj_text_box.N == 4)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 150
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 5)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
    if (obj_text_box.N == 6)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 150
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 7)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
    if (obj_text_box.N == 8)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 150
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 9)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
    if (obj_text_box.N == 12)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 150
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 13)
    {
        with (obj_db_merctalk)
        {
            x = 350
            y = 190
        }
        obj_pro_stopped.image_index = 1
    }
    if (obj_text_box.N == 14)
    {
        with (obj_db_merctalk)
        {
            x = obj_db_mercs2.x
            y = obj_db_mercs2.y
        }
        obj_pro_stopped.image_index = 3
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    progress = 9
    global.dbprogress = 4
    script_execute(scr_random_encounter)
}
global.encountersdisabled = 1
global.battleroom = 120

