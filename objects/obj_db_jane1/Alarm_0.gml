var __b__;
__b__ = action_if_variable(global.turnedorange, 0, 0)
if __b__
{
    progress = 4
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 6
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "WELL, WELL, WELL.#IF IT ISN'T MY BEST#ARCH-NEMESIS."
            FACESTR[1] = 643
            STR[1] = "ISN'T IT ENOUGH THAT#YOU CONQUERED#THUNDER MOUNTAIN?"
            FACESTR[2] = 643
            STR[2] = "NOW YOU INVADE MY#OWN TOWN AS WELL?"
            FACESTR[3] = 643
            STR[3] = "SOMEONE HAS GOT#TO STOP YOU!"
            FACESTR[4] = 644
            STR[4] = "AND GUESS WHO#WILL DO THAT!"
            FACESTR[5] = 644
            STR[5] = "SPOILER ALERT:#IT'S ME!"
            FACESTR[6] = 641
            STR[6] = "AND I EVEN BROUGHT#MY FAVORITE ROCKET#LAUNCHER WITH ME!"
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 10
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "HELLO,#ARCH-NEMESIS."
            FACESTR[1] = 643
            STR[1] = "I HAVE HEARD OF#YOUR KILLING SPREE."
            FACESTR[2] = 641
            STR[2] = "IT MAKES ME#SO PROUD!"
            FACESTR[3] = 641
            STR[3] = "IT REMINDS ME OF MY#TIME FIGHTING NAZIS#IN GERMANY!"
            FACESTR[4] = 641
            STR[4] = "AHH...THAT WAS THE#MOST FUN I HAD#LAST SUMMER."
            FACESTR[5] = 646
            STR[5] = "BUT..."
            FACESTR[6] = 646
            STR[6] = "I'M AFRAID WE'RE#ON OPPOSITE#FRONTS."
            FACESTR[7] = 643
            STR[7] = "BECAUSE WHAT YOU#ARE FIGHTING FOR#IS NOT RIGHT!"
            FACESTR[8] = 643
            STR[8] = "NOT EVERYONE#YOU KILLED WAS#YOUR ENEMY!"
            FACESTR[9] = 643
            STR[9] = "SOME OF THEM WERE#AMERICANS, AND#EVEN MY FRIENDS!"
            FACESTR[10] = 646
            STR[10] = "I NOW KNOW WHAT#I HAVE TO DO..."
        }
    }
}
else
{
    progress = 4
    global.battleroom = 65
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 4
        textvoice = 86
        FACESTR[0] = 644
        STR[0] = "HAHA! BACK SO SOON?"
        FACESTR[1] = 645
        STR[1] = "ERR, WAIT."
        FACESTR[2] = 646
        STR[2] = "DID YOU EVEN COME#BY HERE YET?"
        FACESTR[3] = 643
        STR[3] = "NONETHELESS,#ARCH-NEMESIS!"
        FACESTR[4] = 643
        STR[4] = "YOUR JOURNEY ENDS#RIGHT HERE,#RIGHT NOW!"
    }
}

