var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (sparemeter > 5)
        sparemeter -= 5
    else
        sparemeter = 0
    if (sparemeter == 35)
    {
        global.battleapproachstring = "* Sniper looks into#  the distance."
        image_index = 4
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "Y'know...#I saw this poster#a couple of days back#in Dustbowl..."
        }
    }
    if (sparemeter == 30)
    {
        global.battleapproachstring = "* Sniper smokes on his#  cigarette."
        image_index = 6
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 1
            STR[0] = "\"" + "Wanted:#Woman in glasses.#Big reward" + "\"" + "#Dead or Alive."
            STR[1] = "You're the only#person who fits that#description."
        }
    }
    if (sparemeter == 25)
    {
        global.battleapproachstring = "* Sniper takes a sip#  of his coffee."
        image_index = 2
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "And I thought...#Why not earn#a few Dollarydoos#on the side?"
        }
    }
    if (sparemeter == 20)
    {
        global.battleapproachstring = "* Sniper takes yet another#  sip of his coffee."
        image_index = 6
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 2
            STR[0] = "Good thing your#corpse will suffice#for the reward."
            STR[1] = "Because if there's#one thing I'm#good at..."
            STR[2] = "It's killin'."
        }
    }
    if (sparemeter == 15)
    {
        global.battleapproachstring = "* Sniper realises he needs#  to go to the toilet."
        image_index = 7
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "Cause I'm a bloody#professional at#what I do."
        }
    }
    if (sparemeter == 10)
    {
        global.battleapproachstring = "* Sniper grabs an empty jar#  and turns around."
        image_index = 7
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 1
            STR[0] = "No matter what my#dad says about me."
            STR[1] = "This reward'll#prove it."
        }
    }
    if (sparemeter == 5)
    {
        global.battleapproachstring = "* Sniper comes back with#  a jar filled with a#  yellow liquid."
        image_index = 5
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "(Grumble)"
        }
    }
    if (sparemeter == 0)
    {
        global.evadetime = 1
        with (obj_music_player)
            instance_destroy()
        global.battleapproachstring = "* Sniper feels relieved."
        image_index = 5
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 96
            bubbleshape = 2
            MAXSTR = 5
            STR[0] = "Nah, wait...#This is just wrong."
            STR[1] = "I'm sorry, mate."
            STR[2] = "I just realised#I am not even doing#this for the cash."
            STR[3] = "You're free to go."
            STR[4] = "Thanks for...#...listening.#I guess."
            STR[5] = "I owe ya a favor."
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

