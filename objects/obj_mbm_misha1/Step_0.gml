if (progress == 0)
{
    if (instance_exists(obj_protagonist) && (!instance_exists(obj_pro_stopped)))
    {
        instance_create(obj_protagonist.x, obj_protagonist.y, obj_pro_stopped)
        with (obj_pro_stopped)
            image_index = 2
        with (obj_protagonist)
            instance_destroy()
    }
}
if (progress == 1 && instance_exists(obj_pro_stopped))
{
    with (obj_pro_stopped)
    {
        obj_view_parent.y = y
        sprite_index = spr_pro_up
        image_speed = 0.1
        if (y > 310)
            y -= 1
        else
        {
            other.progress = 2
            sprite_index = spr_pro_stand
            image_speed = 0
            image_index = 2
        }
    }
}
if (progress == 2)
{
    progress = 3
    with (obj_music_player)
        instance_destroy()
    alarm[1] = 30
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    alarm[2] = 30
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    progress = 7
    image_index = 1
    alarm[4] = 30
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    progress = 9
    instance_create(x, (y - 32), obj_mbm_excl)
}
if (progress == 9 && (!instance_exists(obj_mbm_excl)))
{
    progress = 10
    with (instance_create(x, y, obj_music_player))
        musictrack = 164
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 81
        FACESTR[0] = 691
        STR[0] = "* Oh."
        FACESTR[1] = 692
        STR[1] = "* Is time already?"
    }
}
if (progress == 10 && (!instance_exists(obj_text_box)))
{
    progress = 11
    image_index = 3
    alarm[6] = 60
}
if (progress == 12)
{
    progress = 16
    image_index = 0
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 81
        FACESTR[0] = 689
        STR[0] = "* I was not prepared."
        FACESTR[1] = 688
        STR[1] = "* Are you?"
    }
}
if (progress == 13 && (!instance_exists(obj_text_box)))
{
    progress = 14
    image_index = 3
    alarm[7] = 60
}
if (progress == 15)
{
    progress = 16
    image_index = 0
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 81
        FACESTR[0] = 688
        STR[0] = "* Are you?"
    }
}
if (progress == 16 && (!instance_exists(obj_text_box)))
{
    progress = 17
    image_index = 3
    alarm[8] = 60
}
if (progress == 18)
{
    progress = 19
    image_index = 0
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 81
        FACESTR[0] = 688
        STR[0] = "* Is weird."
        FACESTR[1] = 688
        STR[1] = "* Normally my heart#  would be beating fast."
        FACESTR[2] = 692
        STR[2] = "* ..."
        FACESTR[3] = 693
        STR[3] = "* But now it's calm.#* Very calm."
    }
}
if (progress == 19 && (!instance_exists(obj_text_box)))
{
    progress = 20
    image_index = 3
    alarm[9] = 60
}
if (progress == 21)
{
    progress = 22
    image_index = 0
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 81
        FACESTR[0] = 692
        STR[0] = "* ..."
        FACESTR[1] = 688
        STR[1] = "* I will go to next room."
        FACESTR[2] = 692
        STR[2] = "* You know what happens#  there."
        FACESTR[3] = 693
        STR[3] = "* Do not follow if you#  are not ready."
    }
}
if (progress == 22 && (!instance_exists(obj_text_box)))
{
    sprite_index = spr_misha_left
    image_speed = 0.2
    if (x > 110)
        x -= 1
    else
        progress = 23
}
if (progress == 23)
{
    sprite_index = spr_misha_up
    if (y > 240)
        y -= 1
    else
        progress = 24
}
if (progress == 24)
{
    if (x < 160)
        x += 1
    if (y > 160)
        y -= 1
    else
        progress = 25
}
if (progress == 25)
{
    progress = 26
    with (obj_pro_stopped)
        instance_destroy()
    instance_destroy()
    global.meetingprogress = 2
}

