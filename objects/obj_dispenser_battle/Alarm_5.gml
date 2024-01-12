var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 5)
        sparemeter -= 5
    if (sparemeter == 35)
    {
        global.evadetime = 1
        global.battleapproachstring = "* Dispenser twitches and#  shakes uncontrollably."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 12
            STR[0] = "-INITIATING ATTACK#PHASE 1#PHASE 1#PHAAAAAAAAAAAAA"
            STR[1] = "..."
            STR[2] = "YO!#CAN YOU HEAR ME?"
            STR[3] = "IT'S ME, THE#REAL DISPENSER!#THE ONE YOU#KNOW AND LOVE!"
            STR[4] = "I AM STILL IN HERE!#THE RESET DIDN'T#WIPE EVERYTHING#COMPLETELY!"
            STR[5] = "I CAN THINK OF#A WAY TO GET#ME BACK!"
            STR[6] = "JUS-S-SSSSTTTTTTT-"
            STR[7] = "-ERROR-"
            STR[8] = "-INTERNAL#DISCREPANCY#DETECTED-"
            STR[9] = "-IMPLEMENTING#MEASURES-"
            STR[10] = "ARGH!#THAT HURT!"
            STR[11] = "I GOTTA TRY TO#COME UP WITH#SOMETHING VERY#QUICKLY!"
            STR[12] = "OTHERWISE...#THERE MAY BE#NOTHING#OF ME LEFT!"
        }
    }
    if (sparemeter == 30)
    {
        global.evadetime = 300
        global.battleapproachstring = "* Dispenser freezes for a#  second, but then continues#  wobbling back and forth."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "-INITIATING ATTACK#PHASE 2-"
        }
    }
    if (sparemeter == 25)
    {
        progress = 1
        global.battleapproachstring = "* You hear Dispenser's gears#  spinning way too quickly."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 4
            STR[0] = "-INITIATING ATTACK#PHAAAAAA#AAAAAA#SSSSEEEE"
            STR[1] = "..."
            STR[2] = "HEY!#IT'S ME AGAIN!"
            STR[3] = "I FOUND A WAY#TO HELP YOU A#LITTLE!"
            STR[4] = "HERE, USE MY#GOOD OL'#BASEBALL!"
        }
    }
    if (sparemeter == 20)
    {
        progress = 0
        global.evadetime = 300
        global.battleapproachstring = "* You can properly defend#  yourself now, thanks to#  a baseball."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "-INITIATING ATTACK#PHASE 3-"
        }
    }
    if (sparemeter == 15)
    {
        global.evadetime = 300
        global.battleapproachstring = "* Dispenser's screen shows#  a blue screen for a second,#  then goes back to normal."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "-INITIATING ATTACK#PHASE 4-"
        }
    }
    if (sparemeter == 10)
    {
        progress = 1
        act1 = "Button"
        act2 = "Button"
        act3 = "Button"
        global.evadetime = 1
        global.battleapproachstring = "* Press the button."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 5
            STR[0] = "ALRIGHT, I KNOW#WHAT TO DO!"
            STR[1] = "ON MY BACK IS A#SELF-DESTRUCT#BUTTON."
            STR[2] = "RIGHT BELOW THE#RESET BUTTON."
            STR[3] = "I NEED YOU TO#PRESS IT#FOR ME."
            STR[4] = "YOU HAVE TO#TRUST ME!"
            STR[5] = "I'LL SEE IF I CAN#TURN AROUND SO#THAT YOU CAN#REACH IT."
        }
    }
    if (sparemeter == 5)
    {
        global.evadetime = 1
        global.battleapproachstring = "* Press the button."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "PRESS IT NOW!"
        }
    }
    if (sparemeter == 0)
    {
        abouttocrash = 1
        with (obj_music_player)
            instance_destroy()
        with (instance_create(x, 0, obj_speech_bubble_noevade))
        {
            voiceon = 1
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            bubbleshape = 2
            MAXSTR = 3
            STR[0] = "-SELF-DESTRUCTION#INITIATED-"
            STR[1] = "-DESTRUCTION IN:-#- 3 -"
            STR[2] = "- 2 -"
            STR[3] = "- 1 -"
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

