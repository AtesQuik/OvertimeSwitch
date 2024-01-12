if (progress == 0)
{
    if (whitescreen > 0)
        whitescreen -= 0.005
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 13
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* Well, here we are#  once again."
        FACESTR[1] = 629
        STR[1] = "* Wait, I don't hear any#  metallic noises#  anymore..."
        FACESTR[2] = 627
        STR[2] = "* I think yer machine...#* It's not rebelling#  anymore. It gave up."
        FACESTR[3] = 627
        STR[3] = "* Either it doesn't want#  to control ye anymore,#  or it can't."
        FACESTR[4] = 630
        STR[4] = "* Guess ya wore it out#  too much!"
        FACESTR[5] = 627
        STR[5] = "* Now you're the one#  making all the#  decisions again."
        FACESTR[6] = 627
        STR[6] = "* Good job, luv."
        FACESTR[7] = 627
        STR[7] = "* After helping everyone#  else, you helped even#  yourself."
        FACESTR[8] = 629
        STR[8] = "* Well..."
        FACESTR[9] = 629
        STR[9] = "* It seems like this#  really is goodbye."
        FACESTR[10] = 630
        STR[10] = "* Don't worry, I bet#  we'll see each other#  again one day."
        FACESTR[11] = 628
        STR[11] = "* But not for a loooong#  time."
        FACESTR[12] = 628
        STR[12] = "* I am so tired of all#  of this..."
        FACESTR[13] = 627
        STR[13] = "* Come, Pyro."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    alarm[0] = 60
}
if (progress == 4)
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 9
        textvoice = 83
        FACESTR[0] = 629
        STR[0] = "* What's wrong?#* You want to stay with#  her?"
        FACESTR[1] = 629
        STR[1] = "* Huh."
        FACESTR[2] = 627
        STR[2] = "* It's your choice.#* If you really do want#  this..."
        FACESTR[3] = 627
        STR[3] = "* Let her go alone first,#  though."
        FACESTR[4] = 630
        STR[4] = "* I think she still has#  some loose ends to#  tie up."
        FACESTR[5] = 627
        STR[5] = "* Well, it has been a#  big adventure,#  hasn't it?"
        FACESTR[6] = 627
        STR[6] = "* But from here on out..."
        FACESTR[7] = 627
        STR[7] = "* I don't know what the#  future holds."
        FACESTR[8] = 630
        STR[8] = "* That's for you to#  decide."
        FACESTR[9] = 627
        STR[9] = "* Oh, just one more tiny#  thing I wanted to#  mention before I go..."
    }
}
if (progress == 5 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 5)
        obj_tpe_finalballooney.image_xscale = 1
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    progress = 6
    alarm[1] = 30
}
if (progress == 7)
{
    progress = 8
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 84
        FACESTR[0] = 631
        STR[0] = "* YOU'RE AN UTTER#  BLEEDIN' MORON!"
        FACESTR[1] = 632
        STR[1] = "* YOU SHOULD HAVE NEVER#  TRUSTED ME, YA TWIT!"
        FACESTR[2] = 632
        STR[2] = "* AND NOW..."
        FACESTR[3] = 633
        STR[3] = "* YE'RE GONNA PAY THE#  PRICE."
        FACESTR[4] = 632
        STR[4] = "* I'M TAKING ALL YER#  CASH AND GUNNA SPENT#  IT ON BOOZE!"
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    audio_play_sound(snd_syringe, 1, false)
    progress = 9
    with (obj_tpe_finalballooney)
        image_speed = 0.5
}
if (progress == 9)
{
    if (obj_tpe_finalballooney.x > 105)
        obj_tpe_finalballooney.x -= 5
    else
    {
        audio_play_sound(snd_enemy_hurt, 1, false)
        progress = 10
    }
}
if (progress == 10)
{
    if (whitescreen < 1)
        whitescreen += 0.2
    else
    {
        onback = 1
        progress = 11
        obj_tpe_finalballooney.x = 160
        obj_tpe_finalballooney.image_speed = 0.1
        alarm[3] = 30
    }
}
if (progress == 12)
{
    if (whitescreen > 0)
        whitescreen -= 0.1
    else
        progress = 13
}
if (progress == 13)
{
    progress = 14
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 84
        FACESTR[0] = 632
        STR[0] = "* HAHAHAHA!"
    }
}
if (progress == 14 && (!instance_exists(obj_text_box)))
{
    progress = 15
    audio_play_sound(snd_lift, 1, false)
}
if (progress == 15)
{
    if instance_exists(obj_tpe_finalballooney)
    {
        if (obj_tpe_finalballooney.y > -90)
        {
            obj_tpe_finalballooney.y -= 2
            obj_tpe_finalballooney.lift += 2
        }
        else
            progress = 16
        if (obj_tpe_finalballooney.y <= 25)
            image_index = 2
    }
}
if (progress == 16)
{
    progress = 17
    image_index = 3
    alarm[2] = 60
}
if (progress == 18)
{
    if (whitescreen < 1)
        whitescreen += 0.007
    if (!audio_is_playing(snd_whitescreen))
        progress = 19
}
if (progress == 19)
{
    if (blackscreen < 1)
        blackscreen += 0.05
    else
        progress = 20
}
if (progress == 20)
{
    progress = 21
    room_goto(rm_tpe_laststance)
}

