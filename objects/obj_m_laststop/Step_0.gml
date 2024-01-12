var __b__;
__b__ = action_if_variable(global.mineprogress, 4, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 1)
    {
        if (obj_view_parent.y > obj_m_tavishlast.y)
            obj_view_parent.y -= 4
        else
        {
            progress = 2
            alarm[1] = 30
        }
    }
    if (progress == 3 && instance_exists(obj_text_box))
    {
        if (obj_text_box.N == 2)
            obj_m_tavishlast.image_index = 1
        else if (obj_text_box.N == 4)
            obj_m_tavishlast.image_index = 0
    }
    if (progress == 3 && (!instance_exists(obj_text_box)))
    {
        progress = 4
        alarm[2] = 30
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        progress = 6
        with (instance_create(0, 0, obj_music_player))
            musictrack = 138
        obj_m_tavishlast.image_index = 0
        instance_create(x, y, obj_m_demowhite)
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            STR[0] = "* WHY AM I TELLING YE THIS?"
        }
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        instance_create(x, y, obj_m_demowhite)
        progress = 7
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            STR[0] = "* YE'RE ABOUT TO DIE ANYWAY!"
        }
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        global.textboxtop = 1
        instance_create(x, y, obj_m_demowhite)
        progress = 8
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            STR[0] = "* YE LITTLE WEASEL!"
        }
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        global.textboxtop = 0
        instance_create(x, y, obj_m_demowhite)
        progress = 9
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            STR[0] = "* FREEEEEEDOOOOOOOOOOOOOOM!"
        }
    }
    if (progress == 9 && (!instance_exists(obj_text_box)))
    {
        progress = 10
        instance_create(x, y, obj_m_demowhiter)
        obj_m_tavishlast.sprite_index = spr_nh_tavish_stand
        obj_m_tavishlast.image_index = 2
    }
    if (progress == 10 && (!instance_exists(obj_m_demowhiter)))
    {
        progress = 11
        alarm[3] = 60
    }
    if (progress == 12 && (!instance_exists(obj_text_box)))
    {
        audio_play_sound(snd_step, 1, false)
        poster = 1
        progress = 13
        if (global.enemieskilled == 0)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 3
                textvoice = 99
                FACESTR[0] = 658
                STR[0] = "* I mean, yer bounty#  isn't high, accordin'#  to yer wanted poster..."
                FACESTR[1] = 658
                STR[1] = "* All it says is that#  yer a huge danger.#* I 'aven't seen that..."
                FACESTR[2] = 660
                STR[2] = "* ...but that doesn't#  mean that ye are#  not a menace!"
                FACESTR[3] = 660
                STR[3] = "* Who knows what ye#  are capable of?"
            }
        }
        else if (global.enemieskilled == 1)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 2
                textvoice = 99
                FACESTR[0] = 656
                STR[0] = "* Ya killed someone!"
                FACESTR[1] = 657
                STR[1] = "* Why did ya do that?#* Why were they#  so important, hm?"
                FACESTR[2] = 653
                STR[2] = "* I dun' even care,#  really."
            }
        }
        else if (global.enemieskilled > 1)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 2
                textvoice = 99
                FACESTR[0] = 653
                STR[0] = "* Just look at yer#  wanted poster!#* Look at all yer crimes!"
                FACESTR[1] = 656
                STR[1] = (("* Ya killed exactly#  " + string(global.enemieskilled)) + " people!")
                FACESTR[2] = 658
                STR[2] = "* And, some other...#  things, 'suppose..."
            }
        }
    }
    if (progress == 13 && (!instance_exists(obj_text_box)))
    {
        audio_play_sound(snd_step, 1, false)
        poster = 0
        progress = 14
        if (global.janekilled == 0)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 12
                textvoice = 99
                FACESTR[0] = 653
                STR[0] = "* It also states that#  ya plan to kill#  the Mann brothers!"
                FACESTR[1] = 656
                STR[1] = "* I dun' care about#  Blutarch, but if ye#  kill Redmond..."
                FACESTR[2] = 657
                STR[2] = "* I'll be out of a job#  and won't be able to#  drink anything at all!"
                FACESTR[3] = 654
                STR[3] = "* But luckily for me, all#  of yer crimes add up to#  yer bounty!"
                FACESTR[4] = 653
                STR[4] = (("* And that currently#  is " + string(global.bounty)) + " AUS...")
                FACESTR[5] = 659
                STR[5] = "* ...and 37 cents."
                FACESTR[6] = 654
                STR[6] = "* Now tha's what I am#  talkin' about!"
                FACESTR[7] = 656
                STR[7] = "* I'm gunna be rich!#* Ya hear me, ma?"
                FACESTR[8] = 657
                STR[8] = "* I told ya that two jobs#  were more than enough!"
                FACESTR[9] = 653
                STR[9] = "* Now look, lass."
                FACESTR[10] = 653
                STR[10] = "* If ye step forward, and#  why wouldn't ye, I'm#  gunna cut yer head off."
                FACESTR[11] = 653
                STR[11] = "* So if ya want to drink#  one last beer before#  ye kick the bucket,"
                FACESTR[12] = 653
                STR[12] = "* I'll allow it.#* That's what I'd do if#  I were you, anyway."
            }
        }
        else
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 9
                textvoice = 99
                FACESTR[0] = 662
                STR[0] = "* And...ye took the life#  of me best friend."
                FACESTR[1] = 658
                STR[1] = "* Yes, we weren't#  supposed to be friends!"
                FACESTR[2] = 658
                STR[2] = "* RED and BLU, workin'#  together, 'aving a#  grand ol' time?"
                FACESTR[3] = 662
                STR[3] = "* We knew it was against#  the rules."
                FACESTR[4] = 656
                STR[4] = "* But no one could#  fistfight me better#  than him!"
                FACESTR[5] = 656
                STR[5] = "* His liver was almost#  as strong as mine!"
                FACESTR[6] = 657
                STR[6] = "* Bloody hell, I loved#  him like a brother!"
                FACESTR[7] = 657
                STR[7] = "* I dun' even care about#  the money anymore!#* This is about more!"
                FACESTR[8] = 660
                STR[8] = "* I'm gunna make ye feel#  the pain I'm feelin'!#* And it's not me liver!"
                FACESTR[9] = 657
                STR[9] = "* If ye step forward,#  I'm goin' ta blast ya#  into thin gruel!"
            }
        }
    }
    if (progress == 14 && (!instance_exists(obj_text_box)))
    {
        if (obj_view_parent.y < obj_pro_stopped.y)
            obj_view_parent.y += 4
        else
        {
            with (obj_pro_stopped)
                instance_destroy()
            global.mineprogress = 5
            instance_destroy()
        }
    }
}

