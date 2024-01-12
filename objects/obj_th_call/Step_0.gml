if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.enemieskilled == 0 && global.sanihired == 1 && global.sniperhired == 1 && global.janehired == 1 && global.tavishhired == 1 && global.spyhired == 1 && global.scouthired == 1 && global.merc1hired == 1 && global.merc2hired == 1 && global.merc3hired == 1)
    {
        global.truehospitalprogress = 1
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 13
            textvoice = 104
            FACESTR[0] = 672
            STR[0] = "* Pick up,#  pick up,#  pick-"
            FACESTR[1] = 673
            STR[1] = "* Oh!#* Hehe."
            FACESTR[2] = 667
            STR[2] = "* I don't hear bullets#  in the background... "
            FACESTR[3] = 664
            STR[3] = "* So I assume you aren't#  near any miniguns?"
            FACESTR[4] = 665
            STR[4] = "* Good timing!"
            FACESTR[5] = 664
            STR[5] = "* Well.#* I just wanted to tell#  you that you should"
            FACESTR[6] = 674
            STR[6] = "* NEVER, under ANY#  circumstances, go#  to my hospital."
            FACESTR[7] = 664
            STR[7] = "* You hear me?"
            FACESTR[8] = 674
            STR[8] = "* DON'T GO TO MY#  HOSPITAL!#* AT ALL!"
            FACESTR[9] = 665
            STR[9] = "* Heh.#* That was it."
            FACESTR[10] = 670
            STR[10] = "* See you the-"
            FACESTR[11] = 667
            STR[11] = "* I mean...#* DON'T see you!"
            FACESTR[12] = 674
            STR[12] = "* Yes."
            FACESTR[13] = 664
            STR[13] = "* Bye!"
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 15
            textvoice = 104
            FACESTR[0] = 672
            STR[0] = "* Pick up,#  pick up,#  pick-"
            FACESTR[1] = 673
            STR[1] = "* Oh!#* Hehe."
            FACESTR[2] = 667
            STR[2] = "* I don't hear bullets#  in the background... "
            FACESTR[3] = 664
            STR[3] = "* So I assume you aren't#  near any miniguns?"
            FACESTR[4] = 665
            STR[4] = "* Good timing!"
            FACESTR[5] = 664
            STR[5] = "* Considering this is the#  last time we'll ever#  talk to each other..."
            FACESTR[6] = 664
            STR[6] = "* I just wanted to say#  that I had something#  planned for you."
            FACESTR[7] = 668
            STR[7] = "* But there's a problem."
            FACESTR[8] = 666
            STR[8] = "* You killed too much!"
            FACESTR[9] = 669
            STR[9] = "* Nothing wrong with#  that, but now it's not#  going to work!"
            FACESTR[10] = 678
            STR[10] = "* It would have been so#  perfect."
            FACESTR[11] = 675
            STR[11] = "* If only you could turn#  back time..."
            FACESTR[12] = 675
            STR[12] = "* ...and be nicer to#  everyone..."
            FACESTR[13] = 676
            STR[13] = "* *Sigh*"
            FACESTR[14] = 678
            STR[14] = "* Maybe in another life."
            FACESTR[15] = 675
            STR[15] = "* Goodbye."
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
    global.thcall = 1
    with (obj_pro_stopped)
        instance_destroy()
}

