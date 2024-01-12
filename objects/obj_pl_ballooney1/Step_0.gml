if (distance_to_object(obj_protagonist) < 32 && progress == 0 && (!instance_exists(obj_text_box)))
{
    progress = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
        instance_destroy()
    }
    with (instance_create(0, 0, obj_music_player))
        musictrack = 122
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Hi! I'm BALLOONEY."
        FACESTR[1] = 627
        STR[1] = "* BALLOONEY the BALLOO-"
        FACESTR[2] = 631
        STR[2] = "* Oi!"
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (obj_music_player)
        instance_destroy()
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 83
        FACESTR[0] = 631
        STR[0] = "* You're not supposed to#  be here!"
        FACESTR[1] = 631
        STR[1] = "* Why did you come back?"
        FACESTR[2] = 629
        STR[2] = "* No, no, no!"
        FACESTR[3] = 631
        STR[3] = "* Don' you get it?"
        FACESTR[4] = 631
        STR[4] = "* You really don' want#  to be here!"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    with (instance_create(0, 0, obj_music_player))
        musictrack = 169
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 24
        textvoice = 84
        FACESTR[0] = 632
        STR[0] = "* THIS IS THE AFTERLIFE!"
        FACESTR[1] = 633
        STR[1] = "* This is where people#  go when they DIE!"
        FACESTR[2] = 631
        STR[2] = "* Where they turn into#  balloonicorns, like#  myself!"
        FACESTR[3] = 627
        STR[3] = "* Except for YOU."
        FACESTR[4] = 631
        STR[4] = "* You didn't turn into a#  balloonicorn after your#  happy lil' accident!"
        FACESTR[5] = 627
        STR[5] = "* My boss saw that too."
        FACESTR[6] = 627
        STR[6] = "* But then you#  disappeared."
        FACESTR[7] = 631
        STR[7] = "* So I was tasked to#  bring yer sorry little#  *** back!"
        FACESTR[8] = 632
        STR[8] = "* AS MY BOSS'S PLAYMATE."
        FACESTR[9] = 631
        STR[9] = "* And how?"
        FACESTR[10] = 633
        STR[10] = "* BY KILLING YOU."
        FACESTR[11] = 629
        STR[11] = "* But I didn't."
        FACESTR[12] = 627
        STR[12] = "* I didn't want you to go#  through that torture."
        FACESTR[13] = 631
        STR[13] = "* So I crashed everything."
        FACESTR[14] = 632
        STR[14] = "* Deleted your SAVE FILE."
        FACESTR[15] = 629
        STR[15] = "* Good ol' Ballooney,#  risking himself!#* How selfless!"
        FACESTR[16] = 627
        STR[16] = "* And for whom?"
        FACESTR[17] = 631
        STR[17] = "* You.#* Who thought they were#  so clever."
        FACESTR[18] = 631
        STR[18] = "* Now see where that#  cleverness brought you."
        FACESTR[19] = 632
        STR[19] = "* RIGHT BACK TO THE#  PLACE YOU WERE LUCKY#  ENOUGH TO FLEE FROM."
        FACESTR[20] = 632
        STR[20] = "* CONGRATULATIONS."
        FACESTR[21] = 632
        STR[21] = "* YOU ABSOLUTE"
        FACESTR[22] = 632
        STR[22] = "* UTTER"
        FACESTR[23] = 632
        STR[23] = "* BLEEDING"
        FACESTR[24] = 633
        STR[24] = "* MORON."
    }
}
if (progress == 3 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (N == 2)
            textvoice = 83
        if (N == 8)
            textvoice = 84
        if (N == 9)
            textvoice = 83
        if (N == 10)
            textvoice = 84
        if (N == 11)
            textvoice = 83
        if (N == 19)
            textvoice = 84
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    alarm[0] = 30
    with (obj_music_player)
        instance_destroy()
}
if (progress == 5)
{
    progress = 6
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 5
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Oh, hear that?#* That's the boss coming."
        FACESTR[1] = 629
        STR[1] = "* And look, the other#  balloonicorns were#  forced to " + "\"" + "play" + "\"" + " too!"
        FACESTR[2] = 627
        STR[2] = "* You can't escape from#  this.#* None of us can."
        FACESTR[3] = 627
        STR[3] = "* I hope you like playing#  with fire. Because my#  boss sure does."
        FACESTR[4] = 627
        STR[4] = "* Well..."
        FACESTR[5] = 630
        STR[5] = "* It's playtime!"
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    global.pyroprogress = 2
    progress = 7
    if instance_exists(obj_pro_stopped)
        instance_create(obj_pro_stopped.x, obj_pro_stopped.y, obj_pl_soulintro)
}

