if (distance_to_object(obj_protagonist) < 32 && progress == 0 && (!instance_exists(obj_text_box)))
{
    global.textboxtop = 0
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
    progress = 1
    global.musictitle = 122
    with (instance_create(0, 0, obj_music_player))
        musictrack = 122
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 5
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Ey up, lass!"
        FACESTR[1] = 629
        STR[1] = "* Oh, uhm, sorry about#  that earlier."
        FACESTR[2] = 631
        STR[2] = "* I've been drinking#  a lot lately, me wife's#  been cheating on me!"
        FACESTR[3] = 627
        STR[3] = "* But I shouldn't have#  taken it out on you.#* I apologize."
        FACESTR[4] = 627
        STR[4] = "* So, I-"
        FACESTR[5] = 627
        STR[5] = "* 'old on..."
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    progress = 2
    if (global.sanihired == 1)
    {
        if (global.sanicancelledgeno == 1)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 8
                textvoice = 83
                FACESTR[0] = 627
                STR[0] = "* You killed them all,#  didn't you?"
                FACESTR[1] = 627
                STR[1] = "* Well, almost.#* You turned around#  at the last second."
                FACESTR[2] = 627
                STR[2] = "* What made you stop?"
                FACESTR[3] = 627
                STR[3] = "* Couldn't you kill#  the Doc because#  you like him?"
                FACESTR[4] = 627
                STR[4] = "* Or did you just want#  to see what would#  happen?"
                FACESTR[5] = 627
                STR[5] = "* Well, whatever."
                FACESTR[6] = 627
                STR[6] = "* Your mission to#  kill everyone has#  now failed."
                FACESTR[7] = 627
                STR[7] = "* Well, I gotta go.#* See you around!"
                FACESTR[8] = 630
                STR[8] = "* Cheers!"
            }
        }
        else
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 6
                textvoice = 83
                FACESTR[0] = 627
                STR[0] = "* Did you...#* ...try to hire#  that bloke?"
                FACESTR[1] = 627
                STR[1] = "* Oh wow, now that's new!"
                FACESTR[2] = 627
                STR[2] = "* Even though he#  declined, I think this#  was a good choice."
                FACESTR[3] = 630
                STR[3] = "* Clever thinking!#* I like ya style, luv!"
                FACESTR[4] = 627
                STR[4] = "* Right, I gotta bail."
                FACESTR[5] = 627
                STR[5] = "* I'll see you around.#* I'm only a head#  fracture away!"
                FACESTR[6] = 630
                STR[6] = "* Cheers!"
            }
        }
    }
    else if (global.sanikilled == 1)
    {
        if (global.genocide == 1)
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 8
                textvoice = 83
                FACESTR[0] = 629
                STR[0] = "* Oh dear."
                FACESTR[1] = 629
                STR[1] = "* You killed them all."
                FACESTR[2] = 629
                STR[2] = "* I-"
                FACESTR[3] = 627
                STR[3] = "* Oh, I see what you're#  trying to do.#* Right."
                FACESTR[4] = 627
                STR[4] = "* Well, whatever you feel#  like doing, 'suppose."
                FACESTR[5] = 627
                STR[5] = "* You might run into some#  issues later on if you#  keep going like this."
                FACESTR[6] = 627
                STR[6] = "* Ah, none of my#  business, anyway."
                FACESTR[7] = 627
                STR[7] = "* I gotta run now.#* See ya around!"
                FACESTR[8] = 630
                STR[8] = "* Cheers!"
            }
        }
        else
        {
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                MAXSTR = 7
                textvoice = 83
                FACESTR[0] = 627
                STR[0] = "* You killed the Doc!"
                FACESTR[1] = 629
                STR[1] = "* Aw man, was that really#  necessary?"
                FACESTR[2] = 627
                STR[2] = "* Well, at least you#  ended his pain."
                FACESTR[3] = 627
                STR[3] = "* He had been pretty#  depressed for quite#  a long time..."
                FACESTR[4] = 627
                STR[4] = "* Then again, he seemed#  much happier since a#  couple days ago..."
                FACESTR[5] = 627
                STR[5] = "* Ah, who cares,#  am I right?"
                FACESTR[6] = 627
                STR[6] = "* Tell ya what, I gotta#  go for now.#* I'll see you around!"
                FACESTR[7] = 630
                STR[7] = "* Cheers!"
            }
        }
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    if (elevation == 0)
        audio_play_sound(snd_lift, 1, false)
    if (elevation < 96)
        elevation += 2
    else
    {
        global.timergo = 1
        global.hospitalover = 1
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}

