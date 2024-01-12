if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 7
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "HELLO!"
        FACESTR[1] = 641
        STR[1] = "DID YOU MISS ME YET?"
        FACESTR[2] = 641
        STR[2] = "I BET YOU ARE#WONDERING HOW I#GOT THIS NUMBER!"
        FACESTR[3] = 641
        STR[3] = "EASY! SINCE YOUR#NUMBER IS NOWHERE#IN THE PHONE BOOK,"
        FACESTR[4] = 641
        STR[4] = "I JUST CALLED THE#ONLY NUMBER THAT#WASN'T IN THERE!"
        FACESTR[5] = 641
        STR[5] = "OH WELL! I WAS JUST#WONDERING IF YOU#WERE STILL ALIVE."
        FACESTR[6] = 646
        STR[6] = "UH, NO REASON!#JUST...BECAUSE!"
        FACESTR[7] = 641
        STR[7] = "SEE YOU!"
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
    global.minescall1 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

