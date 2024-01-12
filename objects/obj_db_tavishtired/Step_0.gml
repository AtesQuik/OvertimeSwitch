if (sprite_index == spr_nh_tavish_right || sprite_index == spr_nh_tavish_left)
{
    if (soundstep < 4)
        soundstep += 0.1
    else
        soundstep = 0
    if (soundstep == 1 || soundstep == 3)
        audio_play_sound(snd_knight, 1, false)
}
if (progress == 1 && (!instance_exists(obj_db_pourbeer)))
{
    progress = 2
    alarm[0] = 60
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    alarm[1] = 60
}
if (progress == 5 && (!instance_exists(obj_text_box)) && global.janekilled == 0)
{
    if (x > -30)
    {
        x -= 1
        sprite_index = spr_nh_tavish_left
        image_speed = 0.1
    }
    else
    {
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)) && global.janekilled == 1)
{
    if (x > 10)
    {
        x -= 1
        sprite_index = spr_nh_tavish_left
        image_speed = 0.1
    }
    else
    {
        progress = 6
        sprite_index = spr_nh_tavish_stand
        image_index = 3
        image_speed = 0
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            textvoice = 99
            FACESTR[0] = 660
            STR[0] = "* Oh, wait."
            FACESTR[1] = 660
            STR[1] = "* I can't."
        }
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)) && global.janekilled == 1)
{
    if (x > -30)
    {
        x -= 1
        sprite_index = spr_nh_tavish_left
        image_speed = 0.1
    }
    else
    {
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}

