if (progress == 0)
{
    if (x > 2100)
        x -= 3
    else
    {
        sprite_index = spr_jane_stand
        image_speed = 0
        image_index = 3
        progress = 1
    }
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 3
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "DELL!"
        FACESTR[1] = 643
        STR[1] = "I JUST HEARD VOICES!"
        FACESTR[2] = 643
        STR[2] = "AND THEY WERE#NOT IN MY HEAD#THIS TIME!"
        FACESTR[3] = 643
        STR[3] = "DID YOU TALK TO#ANYONE?"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 1
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* oh hey, jane.#* i just came back#  with my groceries."
        FACESTR[1] = 636
        STR[1] = "* the bags over there.#* wanna see what#  i bought?"
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 5
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "NO! I DO NOT!#WHAT ARE YOU BUYING#GROCERIES FOR?"
        FACESTR[1] = 643
        STR[1] = "THERE COULD BE#PEOPLE INVADING#THIS COUNTRY!"
        FACESTR[2] = 643
        STR[2] = "YOU KNOW VERY WELL#I AM TRYING TO STOP#EVERYONE I CAN!"
        FACESTR[3] = 643
        STR[3] = "WHAT KIND OF#SOLDIER WOULD I BE#IF I DIDN'T?"
        FACESTR[4] = 642
        STR[4] = "I BET YOU NEVER EVEN#SURVIVED A MUSTARD#GAS ATTACK!"
        FACESTR[5] = 643
        STR[5] = "BUT I DID!"
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* boy, that sure#  makes you a#  seasoned veteran."
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    progress = 6
    with (obj_tm_dell1)
        image_index = 0
    audio_play_sound(snd_badumtsh, 1, false)
    alarm[0] = 60
}
if (progress == 7 && (!instance_exists(obj_text_box)))
{
    progress = 8
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 5
        textvoice = 86
        FACESTR[0] = 643
        STR[0] = "DAMN YOU, DELL!"
        FACESTR[1] = 643
        STR[1] = "I'LL NEVER BE A WAR#HERO IF YOU JUST#DRINK BEER ALL DAY"
        FACESTR[2] = 643
        STR[2] = "AND DON'T#HELP ME STOP#INVADERS!"
        FACESTR[3] = 643
        STR[3] = "NEXT TIME, YOU#BETTER HAVE TAKEN#A PRISONER OF WAR!"
        FACESTR[4] = 641
        STR[4] = "GOODBYE, DELL!"
        FACESTR[5] = 641
        STR[5] = "GOODBYE, FACE ON#A PAPER BAG!"
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    if (x < 2280)
    {
        sprite_index = spr_jane_left
        image_speed = 0.2
        x += 3
    }
    else
    {
        progress = 9
        with (obj_music_player)
            instance_destroy()
        alarm[1] = 30
    }
}
if (waitforbag == 1 && (!instance_exists(obj_text_box)))
{
    audio_play_sound(snd_step, 1, false)
    with (obj_tm_sentry1)
        drawingmask = 0
    waitforbag = 2
    alarm[2] = 30
}
if (progress == 10 && (!instance_exists(obj_text_box)))
{
    progress = 11
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 8
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* ..."
            FACESTR[1] = 634
            STR[1] = "* hey, buddy."
            FACESTR[2] = 634
            STR[2] = "* can you do me a favor?#* jane has been a bit#  down lately."
            FACESTR[3] = 634
            STR[3] = "* i feel like he just#  wants to take a#  prisoner of war."
            FACESTR[4] = 635
            STR[4] = "* to feel like an actual#  soldier, you know?"
            FACESTR[5] = 636
            STR[5] = "* so, could you just try#  to go with whatever he#  will do to stop you?"
            FACESTR[6] = 634
            STR[6] = "* no worries, pardner.#* he wont harm you."
            FACESTR[7] = 634
            STR[7] = "* well, anyway."
            FACESTR[8] = 636
            STR[8] = "* i think its time#  for a beer.#* see you later."
        }
    }
    else if (global.genocide == 1)
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 4
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* like i said, hes#  pretty much harmless."
            FACESTR[1] = 634
            STR[1] = "* you like that thought,#  don't you?#* itll make it easier?"
            FACESTR[2] = 634
            STR[2] = "* oh, dont think#  i dont know what you#  are doing."
            FACESTR[3] = 634
            STR[3] = "* he is my only friend.#* if you so much as lay#  a finger on him..."
            FACESTR[4] = 640
            STR[4] = "* i am going to make you#  suffer for the rest#  of your life."
        }
    }
}
if (progress == 11 && (!instance_exists(obj_text_box)))
{
    if (obj_tm_dell1.x > 1810)
    {
        with (obj_tm_dell1)
        {
            x -= 2
            sprite_index = spr_dell_left
            image_speed = 0.2
        }
    }
    else
    {
        global.thundermountainprogress = 1
        instance_destroy()
        with (instance_create(0, 0, obj_music_player))
            musictrack = 125
        with (obj_pro_stopped)
            instance_destroy()
        with (obj_tm_dell1)
            instance_destroy()
    }
}

