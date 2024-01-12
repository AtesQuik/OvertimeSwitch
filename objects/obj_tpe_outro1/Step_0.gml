if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 99
        STR[0] = "* 'ow on earth can ye tell?"
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    if (blackness > 0)
        blackness -= 0.01
    else
        progress = 3
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 202
    prodirection = 3
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 5
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* Strange.#* You were only out for#  a very short while."
        FACESTR[1] = 622
        STR[1] = "* I didn't even have to#  perform CPR."
        FACESTR[2] = 622
        STR[2] = "* Though, we have no#  idea why you even#  became unconscious..."
        FACESTR[3] = 622
        STR[3] = "* Or what happened#  to you while you#  were out."
        FACESTR[4] = 620
        STR[4] = "* But it seems like it#  wasn't very serious."
        FACESTR[5] = 621
        STR[5] = "* I am just glad that#  you are back."
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    prodirection = 2
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 99
        FACESTR[0] = 656
        STR[0] = "* Dun' scare us like#  that, lass!"
        FACESTR[1] = 653
        STR[1] = "* I black out all the#  time and even I know#  that was too much!"
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    prodirection = 1
    progress = 6
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* at least shes back#  now, right?"
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    prodirection = 3
    progress = 7
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 81
        FACESTR[0] = 693
        STR[0] = "* But..."
        FACESTR[1] = 693
        STR[1] = "* Mann brothers are gone."
        FACESTR[2] = 690
        STR[2] = "* You failed.#* I am sorry."
    }
}
if (progress == 7 && (!instance_exists(obj_text_box)))
{
    prodirection = 1
    progress = 8
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "OR DID SHE?"
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    delldir = 2
    progress = 9
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 0
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* whatcha on about?"
    }
}
if (progress == 9 && (!instance_exists(obj_text_box)))
{
    progress = 10
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 2
        textvoice = 86
        FACESTR[0] = 645
        STR[0] = "PERHAPS HER QUEST#WASN'T TO KILL OUR#BOSSES..."
        FACESTR[1] = 641
        STR[1] = "BUT RATHER TO#UNITE US FOR SOME#MESSED UP REASON?"
        FACESTR[2] = 641
        STR[2] = "SHE MANAGED TO#HIRE US ALL,#DIDN'T SHE?"
    }
}
if (progress == 10 && (!instance_exists(obj_text_box)))
{
    progress = 11
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 99
        FACESTR[0] = 653
        STR[0] = "* Huh, Jane."
        FACESTR[1] = 655
        STR[1] = "* Maybe ye're onto#  sumthin' there,#  lad."
    }
}
if (progress == 11 && (!instance_exists(obj_text_box)))
{
    prodirection = 3
    progress = 12
    delldir = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* That would certainly#  explain your NOTEPAD..."
    }
}
if (progress == 12 && (!instance_exists(obj_text_box)))
{
    prodirection = 2
    progress = 13
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 1
        FACESTR[0] = 686
        STR[0] = "* Aww yeah!"
        FACESTR[1] = 685
        STR[1] = "* Everything's turning#  out well in the end!"
    }
}
if (progress == 13 && (!instance_exists(obj_text_box)))
{
    prodirection = 1
    progress = 14
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 2
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* so if your quest is#  over..."
        FACESTR[1] = 634
        STR[1] = "* whatre ya gonna do now?"
        FACESTR[2] = 637
        STR[2] = "* i assume ya didnt#  hire us to just stand#  around here."
    }
}
if (progress == 14 && (!instance_exists(obj_text_box)))
{
    progress = 15
    alarm[1] = 30
}
if (progress == 16 && (!instance_exists(obj_text_box)))
{
    prodirection = 3
    progress = 17
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* A break, you say?"
        FACESTR[1] = 621
        STR[1] = "* Hahahaha!"
        FACESTR[2] = 620
        STR[2] = "* My goodness, of course."
        FACESTR[3] = 622
        STR[3] = "* You've been running#  around for who knows#  how long."
        FACESTR[4] = 620
        STR[4] = "* Please do whatever#  you think is right."
    }
}
if (progress == 17 && (!instance_exists(obj_text_box)))
{
    progress = 18
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 81
        FACESTR[0] = 692
        STR[0] = "* I think sun is setting."
        FACESTR[1] = 688
        STR[1] = "* Is very relaxing#  to watch that."
    }
}
if (progress == 18 && (!instance_exists(obj_text_box)))
{
    prodirection = 2
    progress = 19
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 104
        MAXSTR = 0
        FACESTR[0] = 670
        STR[0] = "* Well, that sounds#  like a wonderful idea!"
    }
}
if (progress == 19 && (!instance_exists(obj_text_box)))
{
    prodirection = 1
    progress = 20
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 0
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "NO MATTER WHERE#YOU GO, WE'RE#GOING TO FOLLOW!"
    }
}
if (progress == 20 && (!instance_exists(obj_text_box)))
{
    prodirection = 2
    progress = 21
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 96
        MAXSTR = 1
        FACESTR[0] = 652
        STR[0] = "* Except for Spy and I.#* We're going to stay#  here for a bit."
        FACESTR[1] = 651
        STR[1] = "* We still have some#  things to...#* Talk about."
    }
}
if (progress == 21 && (!instance_exists(obj_text_box)))
{
    progress = 22
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 98
        MAXSTR = 1
        FACESTR[0] = 680
        STR[0] = "* I'm gonna stay too."
        FACESTR[1] = 685
        STR[1] = "* But I can't wait for#  our date!"
    }
}
if (progress == 22 && (!instance_exists(obj_text_box)))
{
    elidir = 1
    progress = 23
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 104
        MAXSTR = 0
        FACESTR[0] = 667
        STR[0] = "* Your what now?"
    }
}
if (progress == 23 && (!instance_exists(obj_text_box)))
{
    prodirection = 1
    progress = 24
    elidir = 0
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 1
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* well then..."
        FACESTR[1] = 637
        STR[1] = "* lead the way."
    }
}
if (progress == 24 && (!instance_exists(obj_text_box)))
{
    progress = 25
    alarm[6] = 30
}
if (progress == 26)
{
    if (y < 255)
    {
        y += 1
        if (y >= 145 && blendout == 0)
        {
            blendout = 1
            audio_play_sound(snd_whitescreen, 1, false)
        }
    }
    if (blendout == 1)
    {
        if (whitescreen < 1)
            whitescreen += 0.01
        else
            blendout = 2
    }
    if (blendout == 2 && (!audio_is_playing(snd_whitescreen)))
    {
        progress = 27
        alarm[8] = 60
    }
}

