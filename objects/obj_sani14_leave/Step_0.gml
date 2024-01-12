if (global.hospitalprogress == 26 && distance_to_object(obj_protagonist) < 32)
{
    global.hospitalprogress = 27
    audio_play_sound(snd_close1, 1, false)
    alarm[0] = 60
    instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
    with (obj_pro_stopped)
        image_index = obj_protagonist.prodirection
    with (obj_protagonist)
        instance_destroy()
}
if (global.hospitalprogress == 28 && (!instance_exists(obj_text_box)))
{
    with (obj_pro_stopped)
        instance_destroy()
    if (x < 570)
    {
        x += 4
        sprite_index = spr_sani_right
        image_speed = 0.25
    }
    else
    {
        sprite_index = spr_sani_stand
        image_speed = 0
        image_index = 1
        global.hospitalprogress = 29
    }
}
if (global.hospitalprogress == 29 && distance_to_object(obj_protagonist) < 32)
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 1
        textvoice = 82
        FACESTR[0] = 624
        STR[0] = "* They all left me.#* And so will you.#* I thought that because"
        FACESTR[1] = 624
        STR[1] = "* I saved your life,#  you'd have a reason#  to keep me company."
    }
    global.hospitalprogress = 30
}
if (global.hospitalprogress == 30 && (!instance_exists(obj_text_box)))
{
    if (x < 1020)
    {
        x += 4
        sprite_index = spr_sani_right
        image_speed = 0.25
    }
    else
    {
        sprite_index = spr_sani_stand
        image_speed = 0
        image_index = 2
        global.hospitalprogress = 31
    }
}
if (global.hospitalprogress == 31 && distance_to_object(obj_protagonist) < 32)
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 624
        STR[0] = "* But I guess that was#  too much to ask for."
    }
    global.hospitalprogress = 32
}
if (global.hospitalprogress == 32 && (!instance_exists(obj_text_box)))
{
    if (y > 360)
    {
        y -= 4
        sprite_index = spr_sani_up
        image_speed = 0.25
    }
    else
    {
        sprite_index = spr_sani_stand
        image_speed = 0
        image_index = 2
        global.hospitalprogress = 33
    }
}
if (global.hospitalprogress == 33 && distance_to_object(obj_protagonist) < 32)
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        textvoice = 82
        FACESTR[0] = 624
        STR[0] = "* You're just like the#  rest of them."
        FACESTR[1] = 624
        STR[1] = "* They only come to me#  when they need#  something, and then"
        FACESTR[2] = 624
        STR[2] = "* they just leave again."
    }
    global.hospitalprogress = 34
}
if (global.hospitalprogress == 34 && (!instance_exists(obj_text_box)))
{
    if (y > 160)
    {
        y -= 4
        sprite_index = spr_sani_up
        image_speed = 0.25
    }
    else
    {
        sprite_index = spr_sani_stand
        image_speed = 0
        image_index = 2
        global.hospitalprogress = 35
    }
}
if (global.hospitalprogress == 35 && distance_to_object(obj_protagonist) < 32)
{
    with (obj_music_player)
        instance_destroy()
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 624
        STR[0] = "* But if you want#  to leave..."
    }
    global.hospitalprogress = 36
    instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
    with (obj_pro_stopped)
        image_index = obj_protagonist.prodirection
    with (obj_protagonist)
        instance_destroy()
}
if (global.hospitalprogress == 36 && (!instance_exists(obj_text_box)))
{
    alarm[1] = 30
    global.hospitalprogress = 37
}
if (dramaticturn == 1 && (!instance_exists(obj_text_box)))
{
    alarm[4] = 1
    dramaticturn = 0
}

