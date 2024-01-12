if (distance_to_object(obj_protagonist) < 32 && progress == 0 && (!instance_exists(obj_text_box)))
{
    progress = 1
    with (instance_create(0, 0, obj_music_player))
        musictrack = 122
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 14
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Oi oi!"
        FACESTR[1] = 627
        STR[1] = "* 'ow ya doin', guvnah?"
        FACESTR[2] = 627
        STR[2] = "* Oh gee, you must be#  really confused, right?"
        FACESTR[3] = 627
        STR[3] = "* You're dead!#* Absolutely, utterly#  DEAD."
        FACESTR[4] = 630
        STR[4] = "* Congratulations!"
        FACESTR[5] = 630
        STR[5] = "* Your adventure has#  ended before it has#  even started!"
        FACESTR[6] = 627
        STR[6] = "* ..."
        FACESTR[7] = 629
        STR[7] = "* Ah, look luv.#* Don't give me#  that face."
        FACESTR[8] = 627
        STR[8] = "* Alright, tell ya what!#* I'm gonna introduce#  myself!"
        FACESTR[9] = 627
        STR[9] = "* I'm BALLOONEY.#* BALLOONEY the, uh,#  CORN?"
        FACESTR[10] = 627
        STR[10] = "* I'm what you would call#  a BALLOONICORN, I mean."
        FACESTR[11] = 627
        STR[11] = "* What's your name?"
        FACESTR[12] = 627
        STR[12] = (("* " + string(global.playername)) + "?")
        FACESTR[13] = 628
        STR[13] = "* That's a bloody#  stupid name."
        FACESTR[14] = 627
        STR[14] = "* Right then!#* Now let me explain#  a few things."
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)) && (!instance_exists(obj_fake_soul_battlestart)))
{
    progress = 2
    instance_create(obj_protagonist.x, obj_protagonist.y, obj_fake_soul_battlestart)
}

