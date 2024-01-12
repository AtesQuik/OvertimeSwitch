if (sparemeter == 95)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 90)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "...."
    }
}
if (sparemeter == 85)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "....."
    }
}
if (sparemeter == 80)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "......"
    }
}
if (sparemeter == 75)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "......."
        STR[1] = "What are you doing?"
    }
}
if (sparemeter == 70)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Where are you#going with this?"
    }
}
if (sparemeter == 65)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 60)
{
    global.battleapproachstring = choose("* Sani avoids your gaze.", "* Sani takes a deep breath.", "* Sani clenches his fists.")
    image_index = 2
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Are you actually#trying to hire me?#Why?"
    }
}
if (sparemeter == 55)
{
    global.battleapproachstring = choose("* Sani's hands are trembling.", "* Sani's lower lip quivers.")
    image_index = 0
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Stop it."
    }
}
if (sparemeter == 50)
{
    global.battleapproachstring = choose("* Sani's hands are trembling.", "* Sani's lower lip quivers.")
    image_index = 2
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 45)
{
    global.battleapproachstring = choose("* Sani's hands are trembling.", "* Sani's lower lip quivers.")
    image_index = 3
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "What for? I don't#deserve it."
    }
}
if (sparemeter == 40)
{
    global.battleapproachstring = choose("* Sani's hands are trembling.", "* Sani's lower lip quivers.")
    image_index = 2
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 35)
{
    global.evadetime = 1
    with (obj_music_player)
        instance_destroy()
    global.battleapproachstring = "* ..."
    image_index = 4
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "I am not someone you#want to employ."
        STR[1] = "I'm just a waste#of time."
    }
}
if (sparemeter == 30)
{
    global.battleapproachstring = "* ..."
    image_index = 6
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 25)
{
    global.battleapproachstring = "* ..."
    image_index = 2
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Please stop trying#to hire me..."
    }
}
if (sparemeter == 20)
{
    global.battleapproachstring = "* ..."
    image_index = 6
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 15)
{
    global.battleapproachstring = "* ..."
    image_index = 7
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "Hehehehe..."
    }
}
if (sparemeter == 10)
{
    global.battleapproachstring = "* ..."
    image_index = 7
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "..."
    }
}
if (sparemeter == 5)
{
    global.battleapproachstring = "* ..."
    image_index = 5
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 0
        STR[0] = "What am I even doing#here..."
    }
}
if (sparemeter == 0)
{
    global.battleapproachstring = "* Sani throws down his#  weapons and spares you."
    image_index = 5
    with (instance_create(x, 0, obj_speech_bubble))
    {
        bubbleshape = 2
        voiceon = 1
        textvoice = 82
        MAXSTR = 1
        STR[0] = "I keep hearts#beating..."
        STR[1] = "I don't stop them..."
    }
}

