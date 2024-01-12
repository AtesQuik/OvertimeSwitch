var __b__;
action_set_relative(1)
__b__ = action_if_object(100, 0, 0)
if (!__b__)
{
    if (global.genocide == 1)
    {
        sparesyou = 1
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 98
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "..."
        }
    }
    else
    {
        if (sparemeter > 5)
            sparemeter -= 5
        else
            sparemeter = 0
        if (sparemeter == 35)
        {
            global.evadetime = 180
            global.battleapproachstring = "* Scout is jumping left#  and right, trying to#  show his best side."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "Man, am I glad to#finally spend some#time with you."
                STR[1] = "You're not like the#others at all!"
            }
        }
        if (sparemeter == 30)
        {
            global.evadetime = 180
            global.battleapproachstring = "* Scout shows off his#  bacon legs."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 3
                STR[0] = "They're just so#boring."
                STR[1] = "Especially Eli."
                STR[2] = "He's just always so#busy with...#Medicine stuff."
                STR[3] = "Never wants to spend#time with me."
            }
        }
        if (sparemeter == 25)
        {
            global.evadetime = 240
            global.battleapproachstring = "* Scout is attacking you#  absent-mindedly."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 2
                STR[0] = "Back home I had#tons of friends!"
                STR[1] = "You shoulda seen me!"
                STR[2] = "But I had to move#away last year,#'cause of this job..."
            }
        }
        if (sparemeter == 20)
        {
            global.evadetime = 210
            global.battleapproachstring = "* Scout pretends he didn't#  just say that."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 4
                STR[0] = "My mom doesn't really#appreciate my job."
                STR[1] = "Says it's too#dangerous."
                STR[2] = "Eh, what does she#know?"
                STR[3] = "It's not dangerous!"
                STR[4] = "It's just...#Lonely."
            }
        }
        if (sparemeter == 15)
        {
            global.evadetime = 420
            global.battleapproachstring = "* Scout tries to jump away#  from his thoughts."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 5
                STR[0] = "Like, when I moved#here, it was all so#new!"
                STR[1] = "But look at me!"
                STR[2] = "I've been living#here for a year,#and I still don't#have any friends!"
                STR[3] = "Except Eli..."
                STR[4] = "But he just stuffs#you in a Dispenser#when you get on his#nerves."
                STR[5] = "What a frickin' jerk."
            }
        }
        if (sparemeter == 10)
        {
            global.evadetime = 420
            global.battleapproachstring = "* Scout tries to hide his#  emotions.#* Poorly."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 4
                STR[0] = "Maybe the problem#isn't them..."
                STR[1] = "Maybe it's me?"
                STR[2] = "Like, am I too#clingy?"
                STR[3] = "Aw man, yeah..."
                STR[4] = "I didn't leave you#alone for a second!"
            }
        }
        if (sparemeter == 5)
        {
            global.evadetime = 510
            global.battleapproachstring = "* Scout's bacon legs turned#  into spaghetti legs."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 4
                STR[0] = "Man, that'd explain#why Eli hates me..."
                STR[1] = "And why no one wants#to spend time with#me..."
                STR[2] = "I just clung to Eli#because he was the#first person I met#here!"
                STR[3] = "He was like, the#only familiar face!"
                STR[4] = "...and still is."
            }
        }
        if (sparemeter == 0 && lastconvo == 0)
        {
            lastconvo = 1
            alarm[2] = 120
            global.evadetime = 1
            with (obj_music_player)
                musictrack = 159
            global.battleapproachstring = "* Scout doesn't even feel#  weird that he just poured#  his heart out to you."
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 31
                STR[0] = "Everything just#stayed so new to me.#So overwhelming."
                STR[1] = "But then I saw you!"
                STR[2] = "You..."
                STR[3] = "...you reminded me#of my first love#back home."
                STR[4] = "A familiar face."
                STR[5] = "And it made me#homesick."
                STR[6] = "That's also kinda#why...I'm in love#with you, ya know?"
                STR[7] = "One of the reasons,#anyway."
                STR[8] = "I just wanted to see#a friendly new face#every day."
                STR[9] = "Not Eli."
                STR[10] = "Not those BLUsers."
                STR[11] = "Someone who#actually cares if#I live or die..."
                STR[12] = "Just...a friend."
                STR[13] = "..."
                STR[14] = "Well, I guess I#gotta be strong then,#don't I?"
                STR[15] = "Makes no sense just#moping about."
                STR[16] = "I gotta get myself#together, get out#there, and make#some friends!"
                STR[17] = "And if someone#doesn't wanna,#forget about 'em!"
                STR[18] = "I'm Scott the Scout!"
                STR[19] = "I'm great the way#I am!"
                STR[20] = "Yeah!"
                STR[21] = "..."
                STR[22] = "Woah."
                STR[23] = "Thanks for making me#realize that!"
                STR[24] = "You're good at this!"
                STR[25] = "Were you a#psychiatrist or#somethin' in your#past life?"
                STR[26] = "..."
                STR[27] = "I think we should#stop this now."
                STR[28] = "Sorry for, uh,#attacking you and#things."
                STR[29] = "I got a bit#overexcited."
                STR[30] = "Oh, and also sorry#for the stuff I did#as a Dispenser and#all..."
                STR[31] = "In my defense:#I swear sometimes#that thing#acted on its own."
            }
        }
        if (sparemeter == 0 && lastconvo == 2)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                voiceon = 1
                textvoice = 98
                bubbleshape = 2
                MAXSTR = 1
                STR[0] = "What are ya waiting#for?"
                STR[1] = "Don't you wanna hire#me?"
            }
        }
    }
    action_set_relative(0)
    nochange = 1
    action_set_relative(1)
    action_set_relative(0)
    dispthere = 0
    action_set_relative(1)
}
scr_no_more_actchoice()
action_set_relative(0)

