if (progress == 1)
{
    if (obj_db_disp5.y < 170)
        obj_db_disp5.y += 3
    else
    {
        audio_play_sound(snd_close2, 1, false)
        progress = 2
        alarm[1] = 30
    }
}
if (progress == 3 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 6)
        obj_db_disp5.sprite_index = spr_dispenser_point
    if (obj_text_box.N == 7)
        obj_db_disp5.sprite_index = spr_dispenser_talk
    if (obj_text_box.N == 7)
    {
        obj_db_disp5.sprite_index = spr_dispenser_cheer
        obj_db_disp5.image_speed = 0
        obj_db_disp5.image_index = 0
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    alarm[2] = 90
    progress = 4
    audio_play_sound(snd_step, 1, false)
    with (obj_db_cineback)
        progress = 1
    with (obj_db_cinecar)
        progress = 1
}
if (progress == 5 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 2)
    {
        obj_db_disp5.image_index = 0
        obj_db_disp5.image_speed = 0
    }
    if (obj_text_box.N == 3)
    {
        obj_db_disp5.image_speed = 0.1
        if (!instance_exists(obj_music_player))
        {
            with (instance_create(x, y, obj_music_player))
                musictrack = 147
        }
    }
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    obj_db_disp5.image_index = 0
    obj_db_disp5.image_speed = 0
    progress = 6
    instance_create(85, 195, obj_db_zombie1)
    instance_create(205, 195, obj_db_zombie2)
    instance_create(240, 195, obj_db_zombie3)
}
if (progress == 6)
{
    if (obj_db_zombie1.y > 165)
        obj_db_zombie1.y -= 1
    else
        progress = 7
    obj_db_zombie2.y -= 1
    obj_db_zombie3.y -= 1
}
if (progress == 7)
{
    progress = 8
    with (obj_music_player)
        musictrack = 148
    obj_db_disp5.sprite_index = spr_dispenser_ohno
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 2
        STR[0] = "* ZOMBIES ATTACK!#* OH NO!"
        STR[1] = "* BUT DON'T BE PUT OFF!#* FOR DISPENSER IS A#  MIGHTY WARRIOR!"
        STR[2] = "* HE SHALL CLEANSE THE WORLD#  OF THIS EVIL!"
    }
}
if (progress == 8 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 1)
    {
        obj_db_disp5.sprite_index = spr_dispenser_point
        obj_db_disp5.image_speed = 0.2
    }
}
if (progress == 8 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        sprite_index = spr_dispenser_whack
        image_speed = 0
        image_index = 0
        if (x > 45)
            x -= 3
        else
        {
            depth = -41
            if (y < 180)
                y += 1
            else
                other.progress = 9
        }
    }
}
if (progress == 9)
{
    alarm[3] = 30
    progress = 10
    with (obj_db_disp5)
        image_speed = 0.4
}
if (progress == 11)
{
    with (obj_db_zombie1)
    {
        if (y < 240)
            y += 3
        else
            instance_destroy()
    }
    with (obj_db_disp5)
    {
        image_index = 0
        image_speed = 0
        if (x < 155)
            x += 4
        else
            other.progress = 12
    }
}
if (progress == 12)
{
    alarm[4] = 30
    progress = 13
    with (obj_db_disp5)
        image_speed = 0.4
}
if (progress == 14)
{
    with (obj_db_zombie2)
    {
        if (y < 240)
            y += 3
        else
            instance_destroy()
    }
    with (obj_db_disp5)
    {
        image_index = 0
        image_speed = 0
        if (x < 195)
            x += 4
        else
            other.progress = 15
    }
}
if (progress == 15)
{
    alarm[5] = 30
    progress = 16
    with (obj_db_disp5)
        image_speed = 0.4
}
if (progress == 17)
{
    with (obj_db_zombie3)
    {
        if (y < 240)
            y += 3
        else
            instance_destroy()
    }
    with (obj_db_disp5)
    {
        image_index = 0
        image_speed = 0
        if (x > 80)
            x -= 6
        else if (y > 170)
            y -= 2
        else
        {
            depth = -31
            other.progress = 18
        }
    }
}
if (progress == 18)
{
    if (obj_db_disp5.x < 125)
        obj_db_disp5.x += 3
    else
        progress = 19
}
if (progress == 19)
{
    progress = 20
    with (obj_music_player)
        musictrack = 147
    obj_db_disp5.sprite_index = spr_dispenser_talk
    obj_db_disp5.image_speed = 0.2
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 1
        STR[0] = "* PHEW.#* THAT WAS CLOSE!"
        STR[1] = "* BUT WHAT'S THIS?!?"
    }
}
if (progress == 20 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 1)
        obj_db_disp5.sprite_index = spr_dispenser_ohno
}
if (progress == 20 && (!instance_exists(obj_text_box)))
{
    progress = 21
    instance_create(obj_db_cinecar.x, -90, obj_db_ufo)
}
if (progress == 21)
{
    obj_db_disp5.image_speed = 0
    with (obj_db_ufo)
    {
        if (y < 0)
            y += 1
        else
        {
            other.progress = 22
            other.alarm[7] = 30
        }
    }
}
if (progress == 23)
{
    progress = 24
    obj_db_disp5.image_speed = 0.2
    with (obj_music_player)
        musictrack = 148
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 3
        STR[0] = "* ALIENS ARE INVADING EARTH!"
        STR[1] = "* WHATEVER SHALL WE DO?"
        STR[2] = "* OH NO!#* WE ARE IN THE BEAM!"
        STR[3] = "* QUICK, MY CHEERLEADER#  GIRLFRIEND, DO SOMETHING!#* ANYTHING!"
    }
}
if (progress == 24 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (obj_text_box.N == 2)
    {
        if (obj_db_ufo.progress == 0)
        {
            obj_db_ufo.progress = 1
            audio_play_sound(snd_sword1, 1, false)
        }
    }
}
if (progress == 24 && (!instance_exists(obj_text_box)))
{
    progress = 25
    alarm[6] = 120
    with (obj_pro_stopped)
    {
        instance_create(x, y, obj_db_prostop)
        instance_destroy()
    }
}
if (progress == 25)
{
    with (obj_menu)
        instance_destroy()
}
if (progress == 26 && (!instance_exists(obj_db_ufo)))
{
    progress = 27
    with (obj_db_disp5)
    {
        sprite_index = spr_dispenser_cheer
        image_speed = 0.2
    }
    with (instance_create(x, y, obj_music_player))
        musictrack = 146
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 0
        STR[0] = "* GREAT WORK!#* YOU SAVED US ALL!"
    }
}
if (progress == 27 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 27 && (!instance_exists(obj_text_box)))
{
    progress = 28
    instance_create(230, 195, obj_db_bites)
}
if (progress == 28)
{
    if (obj_db_bites.y > 160)
        obj_db_bites.y -= 2
    else
    {
        progress = 29
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 0
            STR[0] = "* LOOK! A TINY RACCOON#  WANTS TO CONGRATULATE YOU!#* HOW CUTE!"
        }
    }
}
if (progress == 29 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 29 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    obj_db_disp5.image_speed = 0
    progress = 30
    alarm[8] = 30
}
if (progress == 31)
{
    progress = 32
    with (instance_create(x, y, obj_music_player))
        musictrack = 148
    obj_db_disp5.image_speed = 0.2
    obj_db_disp5.sprite_index = spr_dispenser_ohno
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 1
        STR[0] = "* BUT OH NO!#* THE RACCOON IS A BOMB!"
        STR[1] = "* QUICK, WE NEED TO#  DEFUSE IT!"
    }
}
if (progress == 32 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 32 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        sprite_index = spr_dispenser_cheer
        image_speed = 0
        if (y > -10)
            y -= 4
        else
        {
            x = 205
            y = 275
            other.progress = 34
        }
    }
}
if (progress == 34)
{
    with (obj_db_disp5)
    {
        if (y > 206)
            y -= 4
        else
            other.progress = 36
    }
}
if (progress == 36)
{
    with (obj_db_disp5)
    {
        if (y > 170)
        {
            y -= 4
            obj_db_bites.y -= 4
        }
        else
            other.progress = 37
    }
}
if (progress == 37)
{
    obj_db_disp5.image_speed = 0.2
    progress = 38
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 0
        STR[0] = "* WHICH WIRE DO I CUT?#* THE RED OR THE GREEN ONE?#         Red         Green"
        choices = 1
    }
}
if (progress == 38 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
    if (global.textboxchoice != 0)
    {
        global.textboxchoice = 0
        with (obj_text_box)
            instance_destroy()
    }
}
if (progress == 38 && (!instance_exists(obj_text_box)))
{
    progress = 39
    obj_db_disp5.image_speed = 0
    obj_db_disp5.image_index = 0
    with (obj_music_player)
        instance_destroy()
    with (obj_db_bites)
        alarm[0] = 30
}
if (progress == 39 && (!instance_exists(obj_db_bites)))
{
    obj_db_disp5.image_speed = 0.2
    obj_db_disp5.sprite_index = spr_dispenser_talk
    with (instance_create(x, y, obj_music_player))
        musictrack = 146
    progress = 40
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 2
        STR[0] = "* GOOD CHOICE!#* I CUT THE CORRECT WIRE!"
        STR[1] = "* AND THE RACCOON BIT ME."
        STR[2] = "* THAT WASN'T PART#  OF THE SCRIPT."
    }
}
if (progress == 40 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 40 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        sprite_index = spr_dispenser_cheer
        image_speed = 0
        image_index = 0
        if (y < 240)
            y += 4
        else
        {
            y = -10
            x = 125
            other.progress = 41
        }
    }
}
if (progress == 41)
{
    with (obj_db_disp5)
    {
        if (y < 170)
            y += 4
        else
        {
            other.progress = 42
            obj_pro_stopped.image_index = 0
        }
    }
}
if (progress == 42)
{
    audio_play_sound(snd_close2, 1, false)
    progress = 43
    with (obj_music_player)
        instance_destroy()
    alarm[10] = 30
}
if (progress == 44 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 44 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        if (x < 128)
            x += 0.05
        else
            other.progress = 45
    }
}
if (progress == 45)
{
    progress = 46
    obj_db_disp5.image_speed = 0
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 0
        STR[0] = "* NO!"
    }
}
if (progress == 46 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 46 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        if (x > 90)
            x -= 3
        else
            other.progress = 47
    }
}
if (progress == 47)
{
    progress = 48
    obj_db_disp5.image_speed = 0.2
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 5
        STR[0] = "* YOU ARE RIGHT!#* IT'S TOO SOON!#* THIS DATE IS NOT OVER YET!"
        STR[1] = "* WE WILL HAVE OUR ROMANTIC#  MOMENT LATER!"
        STR[2] = "* I GUESS THIS MOVIE NIGHT#  IS OVER THEN!"
        STR[3] = "* THANKS FOR PARTICIPATING,#  MY DEAR!"
        STR[4] = "* I GOTTA ROLL.#* I HAVE TO PREPARE THE REST#  OF THIS WONDERFUL DATE!"
        STR[5] = "* SEE YA!"
    }
}
if (progress == 48 && instance_exists(obj_text_box))
{
    with (obj_text_box)
    {
        if (voicenow == 1)
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    }
}
if (progress == 48 && (!instance_exists(obj_text_box)))
{
    with (obj_db_disp5)
    {
        image_speed = 0
        if (y > -10)
            y -= 4
        else
        {
            other.progress = 49
            other.alarm[11] = 30
        }
    }
}
if (progress == 50)
{
    audio_play_sound(snd_step, 1, false)
    global.dbprogress = 6
    with (obj_pro_stopped)
        instance_destroy()
    with (obj_db_disp5)
        instance_destroy()
    with (obj_db_prostop)
        instance_destroy()
    instance_destroy()
}

