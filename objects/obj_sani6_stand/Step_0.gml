if (global.hospitalprogress == 7 && distance_to_object(obj_protagonist) < 48)
{
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 6
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* What I want you to do#  now is walk!"
        FACESTR[1] = 620
        STR[1] = "* I know you've done that#  a lot so far, but I#  want to see how long"
        FACESTR[2] = 620
        STR[2] = "* this distance will take#  you."
        FACESTR[3] = 620
        STR[3] = "* For that, I've employed#  the help of this here#  yellow line!"
        FACESTR[4] = 620
        STR[4] = "* Just follow the line,#  how simple is that?"
        FACESTR[5] = 620
        STR[5] = "* I will go ahead and#  meet you once you get#  to the end."
        FACESTR[6] = 621
        STR[6] = "* Good luck!"
    }
    global.hospitalprogress = 8
}
if (global.hospitalprogress == 8 && (!instance_exists(obj_text_box)))
{
    x += 4
    sprite_index = spr_sani_right
    image_speed = 0.25
    if (distance_to_object(obj_pro_stopped) > 196)
    {
        audio_play_sound(snd_close1, 1, false)
        instance_create(2970, 190, obj_sani7_wait)
        with (obj_pro_stopped)
            instance_destroy()
        with (obj_music_player)
            musictrack = 116
        global.hospitalprogress = 9
        instance_destroy()
    }
}

