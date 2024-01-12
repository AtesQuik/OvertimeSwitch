if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 11
        textvoice = 86
        FACESTR[0] = 646
        STR[0] = "HELLO?"
        FACESTR[1] = 641
        STR[1] = "OH GOOD!#YOU'RE STILL THERE!"
        FACESTR[2] = 646
        STR[2] = "I COULDN'T REACH#YOU EARLIER, SO#I FEARED THE WORST!"
        FACESTR[3] = 646
        STR[3] = "I THINK I HAVE TO#TELL YOU#SOMETHING."
        FACESTR[4] = 646
        STR[4] = "THE BOUNTY HUNTER#I TOLD YOU ABOUT?"
        FACESTR[5] = 641
        STR[5] = "HE'S MY FRIEND!"
        FACESTR[6] = 641
        STR[6] = "HAVE YOU MET HIM#YET, BY THE WAY?"
        FACESTR[7] = 641
        STR[7] = "WELL, I THOUGHT#IT'D BE GREAT IF WE#ALL MET UP LATER"
        FACESTR[8] = 641
        STR[8] = "AND WENT BOWLING."
        FACESTR[9] = 641
        STR[9] = "YOU COULD BECOME#HIS FRIEND TOO#THAT WAY!"
        FACESTR[10] = 641
        STR[10] = "OKAY, YOU'RE BUSY.#I'LL SEE YOU!"
        FACESTR[11] = 643
        STR[11] = "DELL?  IS THERE A#PLACE TO GO BOWLING#HERE IN TEUFORT?"
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
    global.minescall3 = 1
    with (obj_pro_stopped)
        instance_destroy()
}

