if (global.genocide == 1)
{
    with (obj_music_player)
        instance_destroy()
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 86
        fontname = 9
        MAXSTR = 8
        STR[0] = "AH!#YOU DIDN'T#KILL ME!"
        STR[1] = "THAT MUST#MEAN..."
        STR[2] = "YOU DON'T#WANT TO BE#AN INTRUDER#ANYMORE!"
        STR[3] = "MAYBE YOU#DON'T EVEN#WANT TO BE#MY"
        STR[4] = "ARCH-#NEMESIS#ANYMORE#EITHER?"
        STR[5] = "I AM#HEART-#BROKEN,#BUT..."
        STR[6] = "ALSO#RELIEVED!"
        STR[7] = "I AM NOT#READY TO#DIE YET!"
        STR[8] = "HOORAY!"
    }
}
else
{
    reducing = 1
    if (sparemeter > 5)
        sparemeter -= 5
    else
        sparemeter = 0
    if (sparemeter == 65)
    {
        global.evadetime = 330
        global.battleapproachstring = "* Jane marches back#  and forth."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "AFTER THIS#IS OVER...#I'LL BE A HERO!"
        }
    }
    if (sparemeter == 60)
    {
        global.evadetime = 330
        global.battleapproachstring = "* Jane salutes the#  American flag, even though#  it's not present."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "I CAN SEE#THE#HEADLINES#ALREADY:"
        }
    }
    if (sparemeter == 55)
    {
        global.evadetime = 450
        global.battleapproachstring = "* Jane thinks about his time#  in the war, but remembers#  he was never in one."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "'INTRUDER#STOPPED BY#VALIANT HERO#JANE DOE'"
        }
    }
    if (sparemeter == 50)
    {
        global.evadetime = 420
        global.battleapproachstring = "* Jane does 20 push-ups,#  even though no one#  ordered him to."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "OTHER#SOLDIERS#WILL SALUTE#ME!"
        }
    }
    if (sparemeter == 45)
    {
        global.evadetime = 420
        global.battleapproachstring = "* Jane shouts at a#  nearby bird.#* It's not impressed."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "THE#PRESIDENT#WILL SHAKE#MY HAND!"
        }
    }
    if (sparemeter == 40)
    {
        global.evadetime = 360
        global.battleapproachstring = "* Jane hums the National#  Anthem, poorly."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "THEY WILL#MAKE TOYS#OF ME!"
        }
    }
    if (sparemeter == 35)
    {
        global.evadetime = 390
        global.battleapproachstring = "* Jane looks at a photograph#  of his love back home.#* It's a photo of America."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "EVEN THOUGH#THE PAINT JOB#WILL BE#REALLY POOR!"
        }
    }
    if (sparemeter == 30)
    {
        global.evadetime = 360
        global.battleapproachstring = "* Jane spits on his boots#  and polishes them until#  they're shiny."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "PEOPLE WILL#RESPECT ME!"
        }
    }
    if (sparemeter == 25)
    {
        global.evadetime = 360
        global.battleapproachstring = "* Jane orders a nearby#  squirrel around.#* It just runs away."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "THEN AGAIN..."
        }
    }
    if (sparemeter == 20)
    {
        global.evadetime = 480
        global.battleapproachstring = "* Jane thinks about America,#  a patriotic tear rolls#  down his cheek."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "YOU DIDN'T#LAUGH AT MY#MISERY ONCE#SO FAR..."
        }
    }
    if (sparemeter == 15)
    {
        global.evadetime = 390
        global.battleapproachstring = "* Jane digs himself a trench,#  but then realizes he#  doesn't even need one."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 1
            STR[0] = "THE ONLY#OTHER#PERSON#WHO NEVER"
            STR[1] = "LAUGHED#AT ME#EITHER IS#DELL..."
        }
    }
    if (sparemeter == 10)
    {
        global.evadetime = 390
        global.battleapproachstring = "* Jane is readying his#  Even Specialer Attack."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 1
            STR[0] = "GAH!#WHO CARES!#GIVE UP NOW,#OR FACE MY"
            STR[1] = "EVEN#SPECIALER#ATTACK!"
        }
    }
    if (sparemeter == 5)
    {
        global.evadetime = 960
        global.battleapproachstring = "* Jane gives you#  one last chance."
        image_index = 0
        with (instance_create(x, 0, obj_speech_bubble))
        {
            bubbleshape = 2
            voiceon = 1
            textvoice = 86
            fontname = 9
            MAXSTR = 0
            STR[0] = "LAST CHANCE!"
        }
    }
    if (sparemeter == 0)
    {
        with (obj_music_player)
            instance_destroy()
        global.evadetime = 240
        global.battleapproachstring = "* Jane is out of options#  and surrenders."
        image_index = 0
        if (sparingyou == 2)
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "I SURRENDER."
            }
        }
        else
        {
            with (instance_create(x, 0, obj_speech_bubble))
            {
                bubbleshape = 2
                voiceon = 1
                textvoice = 86
                fontname = 9
                MAXSTR = 0
                STR[0] = "HERE IT#COMES!"
            }
        }
    }
}

