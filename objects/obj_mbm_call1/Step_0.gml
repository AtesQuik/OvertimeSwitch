if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 5
            dontplay = 1
            STR[0] = "* A long time ago, a man#  named Zepheniah Mann bought#  the Badlands of New Mexico."
            STR[1] = "* On his deathbed, he left#  his land to his two sons:"
            STR[2] = "* Redmond and Blutarch."
            STR[3] = "* Because he knew how much#  the two hated each other,#  he told them to share it."
            STR[4] = "* Each Mann brother wanted#  the entire land to himself."
            STR[5] = "* They each hired#  mercenaries to fight over#  the land."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 9
            textvoice = 83
            FACESTR[0] = 627
            STR[0] = "* Oi oi!"
            FACESTR[1] = 628
            STR[1] = "* Don't even think about#  how I got this number.#* I just do, alright?"
            FACESTR[2] = 631
            STR[2] = "* I am calling ye to#  tell you to knock off#  your murdering spree!"
            FACESTR[3] = 627
            STR[3] = "* When someone dies, they#  come where I live!"
            FACESTR[4] = 627
            STR[4] = "* But not immediately."
            FACESTR[5] = 627
            STR[5] = "* This place exists#  outside of time and#  space."
            FACESTR[6] = 631
            STR[6] = "* So right now they're#  all comin' here all#  at once!"
            FACESTR[7] = 632
            STR[7] = "* It's getting really#  crowded!"
            FACESTR[8] = 627
            STR[8] = "* Just knock it off,#  alright?"
            FACESTR[9] = 630
            STR[9] = "* Thanks and cheerio!"
        }
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.mbmcallprogress = 1
    with (obj_pro_stopped)
        instance_destroy()
}

