var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.soultype != 3)
    {
        global.evadetime = 180
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 97
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "Do you mind if#I smoke?"
        }
    }
    else if (jarated == 1)
    {
        global.evadetime = 390
        global.battleapproachstring = "* Spy DEFINITELY doesn't#  want to be hired by#  you now."
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 97
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = choose("Is this...?#MON DIEU!", "Augh! This suit is#an official Giorgio#Armanni! They're#very expensive!", "I'll never get this#out...", "I...HATE you.", "Oh, no....")
        }
    }
    else
    {
        if (sparemeter > 5)
            sparemeter -= 5
        else
            sparemeter = 0
        if (sparemeter == 45)
        {
            global.evadetime = 390
            global.battleapproachstring = "* Spy smokes on his#  cigarette."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "Would you like to#see my interrogation#method?"
                STR[1] = "\"" + "Squilla Inquisitor" + "\"" + ".#Or, the common term,#" + "\"" + "Spycrab" + "\"" + "."
                STR[2] = "They're rare and#endanged, but also#very deadly."
            }
        }
        else if (sparemeter == 40)
        {
            global.evadetime = 390
            global.battleapproachstring = "* Spy brushes his suit and#  adjusts his tie."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                if (global.genocide == 0)
                    MAXSTR = 1
                else
                    MAXSTR = 2
                STR[0] = "So...#Who sent you,#exactly?"
                STR[1] = "Why do you want#to kill the Mann#brothers?"
                STR[2] = "And everyone else,#for that matter?"
            }
        }
        else if (sparemeter == 35)
        {
            global.evadetime = 390
            global.battleapproachstring = "* Spy flicks way his used#  cigarette and takes out#  a new one."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "Woman of few words,#aren't you?"
                STR[1] = "Maybe my pets can#make you talk."
            }
        }
        else if (sparemeter == 30)
        {
            global.evadetime = 390
            global.battleapproachstring = "* Spy takes one of the crabs,#  gives it a little snack#  and pets it on the head."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "I admire your#endurance, my dear."
                STR[1] = "But we'll see which#one of us can hold#out longer."
                STR[2] = "Ahahahaha~"
            }
        }
        else if (sparemeter == 25)
        {
            noshoot = 0
            invisible = 1
            global.evadetime = 390
            global.battleapproachstring = "* Spy has turned himself#  invisible, which means#  you can't shoot him."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "Oh...the effect of#the tranquilizer dart#seems to have worn#off..."
                STR[1] = "No problem.#I'm just going to#fight from the#shadows from now on."
                STR[2] = "Ahahahaha~"
            }
        }
        else if (sparemeter == 20)
        {
            global.evadetime = 390
            global.battleapproachstring = "* You look into your empty#  pockets. Spy pick-pocketed#  almost everything from you."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 3
                STR[0] = "So, this is one of#the contracts for#the people you hire?"
                STR[1] = "Oh, that's the#salary?"
                STR[2] = "Hmm...not bad.#Not bad at all."
                STR[3] = "More than what#Mr. Mann pays me..."
            }
        }
        else if (sparemeter == 15)
        {
            global.evadetime = 390
            global.battleapproachstring = "* You hear laughter from#  all corners of the room."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "Do you suppose you#could afford#employing a spy?"
                STR[1] = "Because I'd be more#than interested."
            }
        }
        else if (sparemeter == 10)
        {
            global.evadetime = 390
            global.battleapproachstring = "* You feel a tap on your#  shoulder. You turn around,#  but there's no one there."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "Your look tells me#that you do want to#hire me..."
                STR[1] = "What good news."
                STR[2] = "Although...#You'd have to#increase my salary."
            }
        }
        else if (sparemeter == 5)
        {
            global.evadetime = 390
            global.battleapproachstring = "* You think you see Dell in#  the corner, but in the#  blink of an eye, he's gone."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "I'm just kidding."
                STR[1] = "Ahahahaha~"
            }
        }
        else if (sparemeter == 0 && issparing == 0)
        {
            issparing = 1
            invisible = 0
            with (obj_music_player)
                instance_destroy()
            global.evadetime = 1
            global.battleapproachstring = "* Spy admires your courage,#  and the money you offered#  him even more."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 5
                STR[0] = "Well, I suppose I am#going to work for#you then."
                STR[1] = "I do apologize for#my behaviour."
                STR[2] = "On the bright side,#now you got to see#what skills I have."
                STR[3] = "And you got to meet#my lovely pets."
                STR[4] = "I will keep working#for Mr. Mann though.#For as long as he's#alive, that is..."
                STR[5] = "Ahahahaha~"
            }
        }
        else if (sparemeter == 0 && issparing == 1)
        {
            global.evadetime = 1
            global.battleapproachstring = "* Spy admires your courage,#  and the money you offered#  him even more."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 97
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "Would you like...#another dance?"
                STR[1] = "Just kidding."
                STR[2] = "Ahahahaha~"
            }
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

