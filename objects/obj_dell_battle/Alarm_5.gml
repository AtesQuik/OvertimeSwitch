var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (phasetwo == 1)
    {
        if (sparemeter > 35)
        {
            global.evadetime = 1
            if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 35)
        {
            global.evadetime = 1
            global.battleapproachstring = "* NOW the actual battle#  begins."
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 0
                    STR[0] = "well, alright.#guess you do want#this after all."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 30)
        {
            global.evadetime = 530
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 3
                    STR[0] = "say, ever noticed#those blue spinning#things everywhere?"
                    STR[1] = "they're teleporters#i built."
                    STR[2] = "you step into one,#they copy all of#your atoms and#save that data."
                    STR[3] = "then you get dis-#assembled and#reassembled#somewhere else."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 25)
        {
            global.battleapproachstring = "* Two trains leave two#  different cities at the#  same time. Train A..."
            global.evadetime = 560
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 5
                    STR[0] = "so every time some-#one teleports them-#selves..."
                    STR[1] = "they stop living.#for a split second."
                    STR[2] = "ive " + "\"" + "killed" + "\"" + " myself#so many times, i am#not the person#i used to be."
                    STR[3] = "i dont fear death.#"
                    STR[4] = "i saw what it#really is."
                    STR[5] = "just a black void.#nothing."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 20)
        {
            global.evadetime = 280
            global.battleapproachstring = "* Dell is looking exhausted."
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 3
                    STR[0] = "now, imagine#someone had#something in them."
                    STR[1] = "that prevented them#from dying."
                    STR[2] = "itd mean that only#the data of that#person was saved."
                    STR[3] = "because the...#thing would not#allow the user to#" + "\"" + "die" + "\"" + "."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 15)
        {
            global.evadetime = 280
            global.battleapproachstring = "* Dell looks like he's#  about to pass out."
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 1
                    STR[0] = "so the user would#be able to get back#to that point in#time and space."
                    STR[1] = "every time they#actually died."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 10)
        {
            global.evadetime = 310
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 2
                    STR[0] = "but thats besides#the point now."
                    STR[1] = "you gonna give up#any time soon?"
                    STR[2] = "cause if not,#youre gonna face#my special attack."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 5)
        {
            global.evadetime = 1600
            if (sparingyou == 0 && meterdown == 1)
            {
                sparingyou = 1
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 0
                    STR[0] = "well, pardner,#guess if i couldnt#stop you before,#i cant do it now."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
    }
    else
    {
        if (sparemeter > 30)
        {
            global.evadetime = 1
            if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 30)
        {
            global.evadetime = 300
            global.battleapproachstring = "* You'll eventually hit him."
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 0
                    STR[0] = "heh.#as if id just#stand there and#take it."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 25)
        {
            global.evadetime = 460
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 1
                    STR[0] = "i know what youre#thinking."
                    STR[1] = "\"" + "why is he stopping#me only now?" + "\""
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 20)
        {
            global.evadetime = 460
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 1
                    STR[0] = "well, ill let you#in on a secret."
                    STR[1] = "i was instructed#not to kill you#earlier."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 15)
        {
            global.evadetime = 480
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 2
                    STR[0] = "every time you#killed someone,#i received a#call."
                    STR[1] = "a voice told me#not to intervene."
                    STR[2] = "in return, i#received a really#nice reward."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 10)
        {
            global.evadetime = 600
            if (meterdown == 1)
            {
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 2
                    STR[0] = "well, until a few#moments ago."
                    STR[1] = "when you killed#that scout,#i didnt get#anything."
                    STR[2] = "so i took that as#a sign that it was#finally time to#stop you."
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 5)
        {
            with (obj_music_player)
                musictrack = 167
            global.evadetime = 1
            global.battleapproachstring = "* Dell is sparing your life."
            if (sparingyou == 0 && meterdown == 1)
            {
                sparingyou = 1
                with (instance_create(x, 0, obj_speech_bubble))
                {
                    voiceon = 1
                    textvoice = 85
                    fontname = 10
                    bubbleshape = 2
                    MAXSTR = 12
                    STR[0] = "but...#i just...dont want#to."
                    STR[1] = "even after all you#did..."
                    STR[2] = "i feel like you#arent actually#such a bad person."
                    STR[3] = "like you didnt#want to do any of#this in the first#place."
                    STR[4] = "but that there was#something inside#you that..."
                    STR[5] = "made you want#to do it.#an impulse."
                    STR[6] = "pardner."
                    STR[7] = "deep down, i know#theres someone#good."
                    STR[8] = "someone, that in#a different time#and place..."
                    STR[9] = "may have been my#friend."
                    STR[10] = "you dont want this."
                    STR[11] = "so lets just stop#it right here."
                    STR[12] = "what do ya say?"
                }
            }
            else if (!instance_exists(obj_box_to_evade))
                instance_create(0, 0, obj_box_to_evade)
        }
        if (sparemeter == 0)
        {
            global.evadetime = 30
            if instance_exists(obj_music_player)
            {
                with (obj_music_player)
                    instance_destroy()
            }
            instance_create(x, y, obj_dell_sparefadeout)
            global.reloaddellhired = 1
            global.dellhired = 1
            with (instance_create(x, 0, obj_speech_bubble_noevade))
            {
                voiceon = 1
                textvoice = 85
                fontname = 10
                bubbleshape = 2
                MAXSTR = 8
                STR[0] = "..."
                STR[1] = "you're sparing me."
                STR[2] = "disregarding#everything youve#done..."
                STR[3] = "i am proud of you."
                STR[4] = "its not an easy#decision."
                STR[5] = "lord i know."
                STR[6] = "well."
                STR[7] = "i wont let it go#to waste."
                STR[8] = "come here, pardner."
            }
        }
    }
}
scr_no_more_actchoice()
action_set_relative(0)

