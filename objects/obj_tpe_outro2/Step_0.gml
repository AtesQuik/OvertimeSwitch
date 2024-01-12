if (progress == 0)
{
    if (whitescreen > 0)
        whitescreen -= 0.005
    else
    {
        progress = 1
        global.textboxtop = 0
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 0
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* It has been so long#  since I've seen#  a sundown."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 104
        MAXSTR = 2
        FACESTR[0] = 667
        STR[0] = "* Me too..."
        FACESTR[1] = 667
        STR[1] = "* Working inside all day#  really prevented me#  from seeing the beauty"
        FACESTR[2] = 667
        STR[2] = "* this world has to#  offer."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 99
        FACESTR[0] = 653
        STR[0] = "* Usually I'd be in a#  coma by now..."
        FACESTR[1] = 655
        STR[1] = "* But this...#* This is nice."
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 81
        FACESTR[0] = 688
        STR[0] = "* I enjoy it too."
        FACESTR[1] = 688
        STR[1] = "* Big ball of fire#  worked hard all day."
        FACESTR[2] = 689
        STR[2] = "* Now finds rest."
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    progress = 6
    with (obj_tpe_dell2)
        image_index = 3
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 1
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* oh hey, jane."
        FACESTR[1] = 636
        STR[1] = "* i didnt forget that#  its your birthday#  today."
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    progress = 7
    with (obj_tpe_jane2)
        image_index = 1
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 2
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "FINALLY!"
        FACESTR[1] = 645
        STR[1] = "I DIDNT MENTION IT#TO ANYONE!"
        FACESTR[2] = 646
        STR[2] = "I THOUGHT NOONE#CARED ABOUT ME!"
    }
}
if (progress == 7 && (!instance_exists(obj_text_box)))
{
    progress = 8
    with (obj_tpe_demo2)
        image_index = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 99
        FACESTR[0] = 655
        STR[0] = "* Aw lad, that's not#  true!#* I care about ye!"
        FACESTR[1] = 654
        STR[1] = "* I even got ye a gift!"
        FACESTR[2] = 661
        STR[2] = "* Well...I drank 'alf#  of it already..."
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    progress = 9
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 1
        textvoice = 85
        FACESTR[0] = 634
        STR[0] = "* i also got you#  sumthin."
        FACESTR[1] = 636
        STR[1] = "* here, why dont you#  put it on?"
    }
}
if (progress == 9 && (!instance_exists(obj_text_box)))
{
    progress = 10
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 1
        textvoice = 86
        FACESTR[0] = 641
        STR[0] = "DELL!#YOU LOVABLE GUY!"
        FACESTR[1] = 641
        STR[1] = "A HELMET, JUST#FOR ME?"
    }
}
if (progress == 10 && (!instance_exists(obj_text_box)))
{
    progress = 11
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 1
        textvoice = 85
        FACESTR[0] = 637
        STR[0] = "* yeah.#* everyone can see youre#  a soldier now."
        FACESTR[1] = 635
        STR[1] = "* uh, sorry that its#  a bit too big for your#  head."
    }
}
if (progress == 11 && (!instance_exists(obj_text_box)))
{
    progress = 12
    with (obj_tpe_jane2)
    {
        sprite_index = spr_jane_h_right
        image_speed = 0
        image_index = 0
    }
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 4
        MAXSTR = 2
        textvoice = 86
        FACESTR[0] = 650
        STR[0] = "WHAT ARE YOU#TALKING ABOUT?#IT'S PERFECT!"
        FACESTR[1] = 650
        STR[1] = "I CAN'T WAIT#TO SHOW IT TO#EVERYONE!"
        FACESTR[2] = 650
        STR[2] = "I'LL JUST GET MY#ROCKET LAUNCHER!"
    }
}
if (progress == 12 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_jane2)
    {
        sprite_index = spr_jane_h_down
        image_speed = 0.2
    }
    progress = 13
}
if (progress == 13)
{
    if (obj_tpe_jane2.y < 125)
        obj_tpe_jane2.y += 2
    else
    {
        obj_tpe_jane2.sprite_index = spr_jane_h_right
        progress = 14
        with (obj_tpe_dell2)
            image_index = 0
    }
}
if (progress == 14)
{
    if (obj_tpe_jane2.x < 350)
    {
        obj_tpe_jane2.x += 3
        if (obj_tpe_jane2.x >= 290)
        {
            with (obj_tpe_dell2)
                image_index = 1
        }
    }
    else
    {
        progress = 15
        with (obj_tpe_dell2)
            image_index = 2
    }
}
if (progress == 15)
{
    progress = 16
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 99
        FACESTR[0] = 657
        STR[0] = "* Ach, I can't wait to#  use explosives again#  as well."
        FACESTR[1] = 654
        STR[1] = "* I feel like I shoulda#  done that the entire#  time."
        FACESTR[2] = 653
        STR[2] = "* But now I gotta follow#  Jane, before he hurts#  'imself..."
        FACESTR[3] = 661
        STR[3] = "* Or anyone else!"
    }
}
if (progress == 16 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_demo2)
    {
        sprite_index = spr_na_tavish_down
        image_speed = 0.2
    }
    progress = 17
}
if (progress == 17)
{
    if (obj_tpe_demo2.y < 115)
        obj_tpe_demo2.y += 2
    else
    {
        obj_tpe_demo2.sprite_index = spr_na_tavish_right
        progress = 18
    }
}
if (progress == 18)
{
    if (obj_tpe_demo2.x < 350)
        obj_tpe_demo2.x += 3
    else
        progress = 19
}
if (progress == 19 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_eli2)
        image_index = 1
    progress = 20
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = 104
        MAXSTR = 3
        FACESTR[0] = 668
        STR[0] = "* Hmm, that's right...#* He uses sticky bombs#  and grenades..."
        FACESTR[1] = 669
        STR[1] = "* I wonder what effect#  my damage amplifier#  would have on those..."
        FACESTR[2] = 674
        STR[2] = "* Ohh, now this is#  going to be VERY#  interesting!"
        FACESTR[3] = 670
        STR[3] = "* Tavish, wait!#* We have a lot of#  things to try out!"
    }
}
if (progress == 20 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_eli2)
    {
        sprite_index = spr_eli_down
        image_speed = 0.2
    }
    progress = 21
}
if (progress == 21)
{
    if (obj_tpe_eli2.y < 125)
        obj_tpe_eli2.y += 2
    else
    {
        obj_tpe_eli2.sprite_index = spr_eli_right
        progress = 22
    }
}
if (progress == 22)
{
    if (obj_tpe_eli2.x < 400)
        obj_tpe_eli2.x += 3
    else
        progress = 23
}
if (progress == 23 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_misha3)
        image_index = 3
    progress = 24
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 2
        textvoice = 81
        FACESTR[0] = 690
        STR[0] = "* Sani..."
        FACESTR[1] = 693
        STR[1] = "* I have to mention.#* My machine..."
        FACESTR[2] = 690
        STR[2] = "* It's failing..."
    }
}
if (progress == 24 && (!instance_exists(obj_text_box)))
{
    progress = 25
    with (obj_tpe_sani2)
        image_index = 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* Oh...I never expected#  it to last long, but#  so soon already?"
        FACESTR[1] = 622
        STR[1] = "* In that case, I will#  bury the hatchet with#  Eli."
        FACESTR[2] = 622
        STR[2] = "* I'll tell him how to#  build a version of it#  that will last longer."
        FACESTR[3] = 622
        STR[3] = "* As well as how to#  repair and properly#  maintain it."
    }
}
if (progress == 25 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_misha3)
        image_index = 1
    with (obj_tpe_dell2)
        image_index = 3
    progress = 26
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 6
        textvoice = 85
        FACESTR[0] = 637
        STR[0] = "* not sure if thats even#  necessary, pardner."
        FACESTR[1] = 634
        STR[1] = "* ive talked to eli and#  we agreed to work on#  something together."
        FACESTR[2] = 635
        STR[2] = "* something that can#  bring everyone back#  to life much easier."
        FACESTR[3] = 634
        STR[3] = "* it might also get both#  teams the same amount#  of members again..."
        FACESTR[4] = 636
        STR[4] = "* but thats a story for#  another day."
        FACESTR[5] = 634
        STR[5] = "* welp, im gonna go grab#  a beer. i feel like#  ive earned it."
        FACESTR[6] = 637
        STR[6] = "* see ya."
    }
}
if (progress == 26 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_dell2)
    {
        sprite_index = spr_dell_right
        image_speed = 0.2
    }
    progress = 27
}
if (progress == 27)
{
    if (obj_tpe_dell2.x < 380)
        obj_tpe_dell2.x += 2
    else
        progress = 28
}
if (progress == 28 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_misha3)
        image_index = 3
    progress = 29
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 1
        textvoice = 81
        FACESTR[0] = 692
        STR[0] = "* So, doctor..."
        FACESTR[1] = 688
        STR[1] = "* Are you going to be#  my doctor again?"
    }
}
if (progress == 29 && (!instance_exists(obj_text_box)))
{
    progress = 30
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 11
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* ..."
        FACESTR[1] = 622
        STR[1] = "* Misha..."
        FACESTR[2] = 622
        STR[2] = "* I don't think so.#* I have had enough."
        FACESTR[3] = 622
        STR[3] = "* All the pain,#  the backstabbing and#  the suffering..."
        FACESTR[4] = 620
        STR[4] = "* You have Eli now.#* He is qualified#  enough."
        FACESTR[5] = 622
        STR[5] = "* But for me...#* I want to do something#  else."
        FACESTR[6] = 622
        STR[6] = "* I still want to help#  people though."
        FACESTR[7] = 626
        STR[7] = "* Hm?#* What's that?#* Pediatrician?"
        FACESTR[8] = 622
        STR[8] = "* That..."
        FACESTR[9] = 620
        STR[9] = "* That sounds like#  a fantastic plan!#* I've always liked kids."
        FACESTR[10] = 621
        STR[10] = "* Hahaha!"
        FACESTR[11] = 620
        STR[11] = "* Even after everything#  is over...you still#  manage to help me."
    }
}
if (progress == 30 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 7)
    {
        image_index = 1
        with (obj_tpe_sani2)
            image_index = 3
    }
}
if (progress == 30 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_sani2)
        image_index = 1
    progress = 31
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 3
        textvoice = 81
        FACESTR[0] = 688
        STR[0] = "* I understand."
        FACESTR[1] = 689
        STR[1] = "* It's your choice.#* We stay friends anyway."
        FACESTR[2] = 692
        STR[2] = "* But I am tired now.#* I will talk to you#  later."
        FACESTR[3] = 688
        STR[3] = "* Goodnight."
    }
}
if (progress == 31 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_misha3)
    {
        sprite_index = spr_misha_right
        image_speed = 0.2
    }
    progress = 32
}
if (progress == 32)
{
    if (obj_tpe_misha3.x < 380)
        obj_tpe_misha3.x += 2
    else
        progress = 33
}
if (progress == 33 && (!instance_exists(obj_text_box)))
{
    image_index = 2
    with (obj_tpe_sani2)
        image_index = 2
    progress = 34
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 12
        textvoice = 82
        FACESTR[0] = 620
        STR[0] = "* I think both of us#  know why you're even#  standing here today."
        FACESTR[1] = 620
        STR[1] = "* Our mutual friend."
        FACESTR[2] = 620
        STR[2] = "* I feel like you're#  going to see them a#  lot more in the future."
        FACESTR[3] = 620
        STR[3] = "* Maybe they also want#  to join the teams."
        FACESTR[4] = 622
        STR[4] = "* Shouldn't be so#  dangerous anymore,#  if Dell is correct..."
        FACESTR[5] = 622
        STR[5] = "* ..."
        FACESTR[6] = 622
        STR[6] = "* I really don't know#  how I can thank you#  enough for everything."
        FACESTR[7] = 620
        STR[7] = "* Without your support,#  none of this would have#  ever happened."
        FACESTR[8] = 620
        STR[8] = "* Thank you."
        FACESTR[9] = 622
        STR[9] = "* ..."
        FACESTR[10] = 620
        STR[10] = "* I am a bit tired too.#* I think I'll head#  to bed soon."
        FACESTR[11] = 620
        STR[11] = "* You seem like you want#  to stay for a while#  longer."
        FACESTR[12] = 621
        STR[12] = "* In that case,#  good night."
    }
}
if (progress == 34 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_sani2)
    {
        sprite_index = spr_sani_right
        image_speed = 0.2
    }
    progress = 35
}
if (progress == 35)
{
    if (obj_tpe_sani2.x < 200)
        obj_tpe_sani2.x += 2
    else
    {
        obj_tpe_sani2.sprite_index = spr_sani_stand
        obj_tpe_sani2.image_index = 1
        obj_tpe_sani2.image_speed = 0
        progress = 36
        alarm[0] = 30
    }
}
if (progress == 37)
{
    image_index = 1
    progress = 38
    with (obj_tpe_sani2)
        image_index = 3
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 4
        textvoice = 82
        FACESTR[0] = 622
        STR[0] = "* Just one more thing..."
        FACESTR[1] = 622
        STR[1] = "* If you hired so many#  people..."
        FACESTR[2] = 622
        STR[2] = "* Why didn't you just#  order some of them to#  do your job for you?"
        FACESTR[3] = 620
        STR[3] = "* Maybe that thought#  hadn't even occured#  to you."
        FACESTR[4] = 621
        STR[4] = "* Oh well.#* Get some rest now.#* See you!"
    }
}
if (progress == 38 && (!instance_exists(obj_text_box)))
{
    with (obj_tpe_sani2)
    {
        sprite_index = spr_sani_right
        image_speed = 0.2
    }
    progress = 39
}
if (progress == 39)
{
    if (obj_tpe_sani2.x < 380)
        obj_tpe_sani2.x += 2
    else
    {
        progress = 40
        alarm[1] = 60
    }
}
if (progress == 41)
{
    if (x < 340)
        x += 2
    else
        progress = 42
}
if (progress == 42)
{
    progress = 43
    blackscreen = 1
    audio_play_sound(snd_flee, 1, false)
    with (obj_music_player)
        instance_destroy()
    global.completedpacifist = 1
    alarm[7] = 5
    alarm[6] = 90
}

