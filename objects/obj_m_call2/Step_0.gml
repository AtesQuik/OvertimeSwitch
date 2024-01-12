if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 11
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "HELLO AGAIN!"
        FACESTR[1] = 641
        STR[1] = (("DELL TOLD ME YOUR#NAME WAS#" + string(global.playername)) + "!")
        FACESTR[2] = 645
        STR[2] = (("WEIRD, YOU DON'T#LOOK LIKE A#" + string(global.playername)) + " TO ME.")
        FACESTR[3] = 642
        STR[3] = "I WAS SO MOVED,#I WROTE YOU A#LITTLE POEM!"
        FACESTR[4] = 645
        STR[4] = "*AHEM*"
        FACESTR[5] = 641
        STR[5] = (string(global.playername) + ".")
        FACESTR[6] = 641
        STR[6] = "YOU ARE NEAT."
        FACESTR[7] = 641
        STR[7] = "-THE END-"
        FACESTR[8] = 641
        STR[8] = "DID YOU LIKE IT?"
        FACESTR[9] = 642
        STR[9] = "HOORAY!"
        FACESTR[10] = 641
        STR[10] = "ALRIGHT, DON'T WANT#TO KEEP YOU FROM#MARCHING FORWARD!"
        FACESTR[11] = 641
        STR[11] = "JUST WANTED TO#CHECK ON YOU AGAIN.#BYE!"
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
    global.minescall2 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

