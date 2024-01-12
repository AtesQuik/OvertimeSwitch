if (global.hospitalprogress == 9)
{
    if (distance_to_object(obj_protagonist) > 32)
        secondsmeasured += 1
    if (distance_to_object(obj_protagonist) < 33)
    {
        global.hospitalprogress = 10
        with (obj_music_player)
            musictrack = 112
        with (obj_protagonist)
        {
            instance_create(x, y, obj_pro_stopped)
            obj_pro_stopped.image_index = 1
            instance_destroy()
        }
        if ((secondsmeasured / 30) < 26)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 0
                FACESTR[0] = 625
                textvoice = 82
                STR[0] = "* Wait, how did you-#* No, wait, what?#* This is impossible!"
            }
        }
        else if ((secondsmeasured / 30) < 36)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 1
                textvoice = 82
                FACESTR[0] = 621
                STR[0] = "* Very nice work!#* You were pretty fast,#  I am impressed!"
                FACESTR[1] = 621
                STR[1] = "* You must have been an#  athlete at some point#  in your life, haha!"
            }
        }
        else if ((secondsmeasured / 30) < 46)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 1
                textvoice = 82
                FACESTR[0] = 621
                STR[0] = "* Very nicely done! You#  could have been a bit#  faster, but you made it"
                FACESTR[1] = 621
                STR[1] = "* here pretty quickly.#* Good job!"
            }
        }
        else if ((secondsmeasured / 30) < 91)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 2
                textvoice = 82
                FACESTR[0] = 622
                STR[0] = "* Ah, there you are!#* I was starting to get#  worried there."
                FACESTR[1] = 621
                STR[1] = "* At least you're here#  now, and your legs did#  NOT fall off, so I will"
                FACESTR[2] = 621
                STR[2] = "* mark that as a#  success in my chart."
            }
        }
        else if ((secondsmeasured / 30) > 91)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 3
                textvoice = 82
                FACESTR[0] = 622
                STR[0] = "* My goodness, THERE you#  are!"
                FACESTR[1] = 622
                STR[1] = "* I was really worried,#  that took you a long#  time!"
                FACESTR[2] = 622
                STR[2] = "* Did you get lost? Maybe#  one line wasn't enough.#* I should add another"
                FACESTR[3] = 622
                STR[3] = "* one! Or did you pass#  out on the way here?#* I hope not!"
            }
        }
    }
}
if (global.hospitalprogress == 10 && (!instance_exists(obj_text_box)))
{
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 11
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* But this concludes our#  little training!"
        FACESTR[1] = 621
        STR[1] = "* I am overall very proud#  of you. I'm also happy#  that you feel so much"
        FACESTR[2] = 621
        STR[2] = "* better. For now though,#  I'm afraid I'll have to#  leave for a bit."
        FACESTR[3] = 621
        STR[3] = "* I have something to#  show you! Would you#  please be so kind and"
        FACESTR[4] = 621
        STR[4] = "* wait here for me?#* It will not take long."
        FACESTR[5] = 622
        STR[5] = "* This hospital is old#  and dangerous, you#  might hurt yourself"
        FACESTR[6] = 622
        STR[6] = "* easily if you walk here#  alone. And after all#  that has happened to"
        FACESTR[7] = 622
        STR[7] = "* you, I don't want to#  risk that."
        FACESTR[8] = 620
        STR[8] = "* But if you need#  anything, you can just#  give me a cal-"
        FACESTR[9] = 626
        STR[9] = "* ..."
        FACESTR[10] = 621
        STR[10] = "* Actually, just wait#  here please."
        FACESTR[11] = 621
        STR[11] = "* Bis gleich!"
    }
    global.hospitalprogress = 11
}
if (global.hospitalprogress == 11 && (!instance_exists(obj_text_box)))
{
    x += 2
    image_speed = 0.2
    sprite_index = spr_sani_right
}

