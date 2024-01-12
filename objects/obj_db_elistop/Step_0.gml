var __b__;
__b__ = action_if_variable(global.genocide, 1, 0)
if __b__
{
    if (progress == 1 && (!instance_exists(obj_text_box)))
    {
        progress = 2
        with (obj_music_player)
            musictrack = 143
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 10
            STR[0] = "* OH!"
            STR[1] = "* HEY THERE, GOOD-LOOKING!#* DO YOU REMEMBER ME?#* FROM THUNDER MOUNTAIN?"
            STR[2] = "* I WAS JUST DOING MY#  JOB, DISPENSING#  GOODIES, UNTIL I SAW..."
            STR[3] = "* YOU!#* THE MOST BEAUTIFUL#  WOMAN I'VE EVER SEEN!"
            STR[4] = "* AND I FELL IN LOVE WITH#  YOU IMMEDIATELY."
            STR[5] = "* HOW COULD I NOT?#* A FIERCE WARRIOR, NOTHING#  STANDS IN YOUR WAY!"
            STR[6] = "* AFTER THAT, ELI CALLED#  ME BACK TO HIS HOSPITAL#  FOR SOME REASON."
            STR[7] = "* BUT HERE WE ARE AGAIN!#* TOGETHER!#* AT LAST!"
            STR[8] = "* SO, I KNOW YOU'LL BE#  OVERWHELMED BY THIS...#  BUT WOULD YOU LIKE TO GO-"
            STR[9] = "* WAIT A MINUTE!#* THE DOC WANTED ME TO#  DELIVER YOU A MESSAGE."
            STR[10] = "* LEMME JUST PLAY IT TO YOU!"
        }
    }
    if (progress == 2 && instance_exists(obj_text_box))
    {
        with (obj_text_box)
        {
            if (voicenow == 1)
                textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        progress = 3
        audio_play_sound(snd_tv, 1, false)
        with (obj_db_disp1)
        {
            sprite_index = spr_dispenser_tv1
            image_speed = 0.2
        }
    }
    if (progress == 3 && (!audio_is_playing(snd_tv)))
    {
        progress = 4
        with (obj_db_disp1)
            sprite_index = spr_dispenser_tv2
    }
    if (progress == 4)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
        }
        else
        {
            progress = 5
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                textvoice = 104
                MAXSTR = 19
                FACESTR[0] = 673
                STR[0] = "* Ehehe, Hallo!"
                FACESTR[1] = 671
                STR[1] = "* You may not know me,#  but I know you."
                FACESTR[2] = 667
                STR[2] = "* It seems like you've#  waged war against#  literally everyone."
                FACESTR[3] = 667
                STR[3] = (("* " + string(global.enemieskilled)) + " lives ended#  so far, right?")
                FACESTR[4] = 667
                STR[4] = "* Well..."
                FACESTR[5] = 664
                STR[5] = "* It's truly remarkable!"
                FACESTR[6] = 664
                STR[6] = "* I am very fascinated#  by your skills!"
                FACESTR[7] = 664
                STR[7] = "* All these people tried#  to stop you...but none#  of them could!"
                FACESTR[8] = 670
                STR[8] = "* You're like a true#  Ubermensch,#  mein Freund!"
                FACESTR[9] = 678
                STR[9] = "* Oh, the experiments#  I would have loved to#  do with you..."
                FACESTR[10] = 665
                STR[10] = "* But I know very well#  what you'd do to me#  if we met."
                FACESTR[11] = 670
                STR[11] = "* Don't worry though,#  I will meet you later!"
                FACESTR[12] = 674
                STR[12] = "* Because I thought of#  an even better plan!"
                FACESTR[13] = 664
                STR[13] = "* Well, this was all#  I wanted to tell you."
                FACESTR[14] = 670
                STR[14] = "* Auf Wiedersehen!"
                FACESTR[15] = 668
                STR[15] = "* ..."
                FACESTR[16] = 669
                STR[16] = "* Is it still recording?"
                FACESTR[17] = 666
                STR[17] = "* Well turn it off then!"
                FACESTR[18] = 666
                STR[18] = "* No, the RED button!"
                FACESTR[19] = 666
                STR[19] = "* THERE'S ONLY ONE!"
            }
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        progress = 6
        audio_play_sound(snd_tv, 1, false)
        with (obj_db_disp1)
        {
            sprite_index = spr_dispenser_tv1
            image_speed = 0.2
        }
    }
    if (progress == 6 && (!audio_is_playing(snd_tv)))
    {
        progress = 7
        with (obj_db_disp1)
        {
            sprite_index = spr_dispenser_talk
            image_speed = 0.2
        }
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 10
            STR[0] = "* SO, YEAH!#* NO CLUE WHAT HE MEANT."
            STR[1] = "* HE SEEMED VERY EXCITED,#  THOUGH.#* WHAT A WEIRD FELLA."
            STR[2] = "* SO, WHAT I WANTED TO#  ASK YOU!"
            STR[3] = "* WOULD YOU LIKE TO GO#  OUT ON A DA-"
            STR[4] = "* -ERROR-"
            STR[5] = "* -DATE PREVENTION#  PROGRAM IN PROGRESS-"
            STR[6] = "* ..."
            STR[7] = "* OH."
            STR[8] = "* YEAH, HE DIDN'T WANT#  ME TO SPEND TIME WITH#  YOU FOR SOME REASON."
            STR[9] = "* I'D LOVE TO CHAT MORE, BUT#  I THINK I'D BLOW UP IF#  I STAYED FOR MUCH LONGER."
            STR[10] = "* I'LL SEE YOU AROUND,#  SWEETHEART!"
        }
    }
    if (progress == 7)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
            if (obj_text_box.N == 4)
            {
                with (obj_db_disp1)
                {
                    image_speed = 0.4
                    sprite_index = spr_dispenser_robo
                }
            }
            if (obj_text_box.N == 6)
            {
                with (obj_db_disp1)
                {
                    image_speed = 0.2
                    sprite_index = spr_dispenser_talk
                }
            }
        }
        else
        {
            with (obj_db_disp1)
                image_speed = 0
            if (obj_db_disp1.x < 650)
                obj_db_disp1.x += 3
            else
            {
                progress = 8
                with (obj_db_disp1)
                    instance_destroy()
            }
        }
    }
    if (progress == 8)
    {
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}
else
{
    if (progress == 1)
    {
        with (obj_db_eli1)
        {
            if (x > 500)
                x -= 2
            else
            {
                other.progress = 2
                sprite_index = spr_eli_stand
                image_index = 3
                image_speed = 0
                instance_create(x, y, obj_db_exclamation)
            }
        }
    }
    if (progress == 2 && (!instance_exists(obj_db_exclamation)))
    {
        with (obj_db_eli1)
        {
            if (x > 470)
            {
                x -= 3
                sprite_index = spr_eli_left
                image_speed = 0.3
            }
            else
            {
                other.progress = 3
                sprite_index = spr_eli_stand
                image_index = 3
                image_speed = 0
            }
        }
    }
    if (progress == 3)
    {
        progress = 4
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            textvoice = 104
            MAXSTR = 18
            FACESTR[0] = 667
            STR[0] = "* OH"
            FACESTR[1] = 667
            STR[1] = "* MEIN"
            FACESTR[2] = 667
            STR[2] = "* GOTT!"
            FACESTR[3] = 670
            STR[3] = "* It's YOU!#* You're finally here!"
            FACESTR[4] = 674
            STR[4] = "* And what a fine#  specimen you are!"
            FACESTR[5] = 665
            STR[5] = "* Well, bone structure#  is a bit weak, your#  eyes obviously too..."
            FACESTR[6] = 671
            STR[6] = "* Ehehe...#* You must be very#  confused, aren't you?"
            FACESTR[7] = 664
            STR[7] = "* Hallo!#* I am ELI."
            FACESTR[8] = 664
            STR[8] = "* I am the doctor of#  this hospital."
            FACESTR[9] = 664
            STR[9] = "* I treat all the#  mercenaries around#  here."
            FACESTR[10] = 670
            STR[10] = "* For free, of course.#* Helping people to#  fight is all I want."
            FACESTR[11] = 664
            STR[11] = "* And you...#* I've heard so much#  about you already!"
            FACESTR[12] = 664
            STR[12] = "* The way you fight...#* It's interesting, to#  say the least!"
            FACESTR[13] = 664
            STR[13] = "* In fact...could you#  help me with a small#  experiment?"
            FACESTR[14] = 664
            STR[14] = "* Do you see that#  machine over there?"
            FACESTR[15] = 664
            STR[15] = "* Not only does it heal#  people, but when I#  flip a switch..."
            FACESTR[16] = 670
            STR[16] = "* IT INCREASES ALL THE#  DMG OF THAT PERSON#  BY THREE TIMES!"
            FACESTR[17] = 665
            STR[17] = "* The healing is only#  as rewarding as the#  hurting, hehe."
            FACESTR[18] = 664
            STR[18] = "* Come, let's try#  it out, shall we?"
        }
    }
    if (progress == 4 && instance_exists(obj_text_box))
    {
        if (obj_text_box.N == 7 && (!instance_exists(obj_music_player)))
        {
            with (instance_create(x, y, obj_music_player))
                musictrack = 142
        }
        if (obj_text_box.N == 14)
        {
            with (obj_db_eli1)
                image_index = 0
        }
        if (obj_text_box.N == 15)
        {
            with (obj_db_eli1)
                image_index = 3
        }
        if (obj_text_box.N == 16)
        {
            with (obj_db_eli1)
            {
                sprite_index = spr_eli_maniac
                image_index = 0
            }
        }
        if (obj_text_box.N == 17)
        {
            with (obj_db_eli1)
            {
                sprite_index = spr_eli_stand
                image_index = 3
            }
        }
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        with (obj_music_player)
            instance_destroy()
        progress = 5
        alarm[0] = 30
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        progress = 7
        alarm[2] = 30
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        progress = 9
        instance_create(x, y, obj_db_flash)
    }
    if (progress == 9 && (!instance_exists(obj_db_flash)))
    {
        progress = 10
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            textvoice = 104
            MAXSTR = 1
            FACESTR[0] = 666
            STR[0] = "* Ugh..."
            FACESTR[1] = 666
            STR[1] = "* Hello,#  Dispense-o-Matic."
        }
    }
    if (progress == 10 && (!instance_exists(obj_text_box)))
    {
        progress = 11
        with (instance_create(x, y, obj_music_player))
            musictrack = 143
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 0
            STR[0] = "* HEY THERE, DOC!#* DID YA MISS ME?"
        }
    }
    if (progress == 11)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
        }
        else
        {
            with (obj_db_disp1)
            {
                image_speed = 0
                image_index = 0
            }
            progress = 12
            instance_create(x, y, obj_text_box)
            with (obj_text_box)
            {
                textvoice = 104
                MAXSTR = 0
                FACESTR[0] = 666
                STR[0] = "* Like a festering sore."
            }
        }
    }
    if (progress == 12 && (!instance_exists(obj_text_box)))
    {
        with (obj_db_disp1)
        {
            image_speed = 0.2
            sprite_index = spr_dispenser_talk
        }
        progress = 13
        with (instance_create(x, y, obj_music_player))
            musictrack = 143
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 7
            STR[0] = "* AW, DOC!#* YOU'RE ALWAYS A#  GOOD PALLY."
            STR[1] = "* BUT MORE IMPORTANTLY...#* WHO IS THIS BEAUTY#  OVER HERE?"
            STR[2] = "* I'M NOT EVEN TALKING#  ABOUT ME THIS TIME!"
            STR[3] = "* OH, WAIT!#* I REMEMBER YOU!#* FROM THUNDER MOUNTAIN!"
            STR[4] = "* WHEN I FIRST LAID MY EYES#  ON YOU..."
            STR[5] = "* ...I IMMEDIATELY FELL IN#  LOVE WITH YOU!"
            STR[6] = "* SO I KNOW THIS MAY BE#  TOO MUCH FOR YOU TO#  HANDLE..."
            STR[7] = "* BUT WOULD YOU GO ON A DATE#  WITH ME, DEAREST SUNSHINE?"
        }
    }
    if (progress == 13)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
        }
        else
        {
            with (obj_db_disp1)
            {
                image_speed = 0
                image_index = 0
            }
            progress = 14
            with (instance_create(x, y, obj_text_box))
            {
                textvoice = 104
                MAXSTR = 2
                FACESTR[0] = 667
                STR[0] = "* Oh nein, I saw enough#  " + "\"" + "Heavy Metal" + "\"" + " to know#  where this is going..."
                FACESTR[1] = 666
                STR[1] = "* Dispenser, would you be#  so kind and get lost?"
                FACESTR[2] = 666
                STR[2] = "* We're in the middle of#  something here."
            }
        }
    }
    if (progress == 14 && (!instance_exists(obj_text_box)))
    {
        with (obj_db_disp1)
            image_speed = 0.2
        progress = 15
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 2
            STR[0] = "* WAIT!#* ARE YOU ALREADY ON A DATE#  WITH...HIM?!?"
            STR[1] = "* OHHH NO, SWEET CHEEKS!#* HE'S NOWHERE NEAR AS#  GOOD AS I AM!"
            STR[2] = "* SEEMS LIKE I'LL HAVE TO#  PROVE MYSELF TO YOU!"
        }
    }
    if (progress == 15)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
        }
        else
        {
            with (obj_music_player)
                instance_destroy()
            progress = 16
            instance_create(obj_pro_stopped.x, obj_pro_stopped.y, obj_db_soulstart)
        }
    }
    if (progress == 16 && (!instance_exists(obj_db_soulstart)) && (!instance_exists(obj_db_soulgo)))
    {
        with (obj_db_disp1)
        {
            image_speed = 0
            image_index = 0
        }
        with (instance_create(x, y, obj_music_player))
            musictrack = 143
        progress = 17
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 104
            MAXSTR = 4
            FACESTR[0] = 666
            STR[0] = "* Nein! Nein, Nein, NEIN!"
            FACESTR[1] = 666
            STR[1] = "* I finally get a new#  guinea pi- "
            FACESTR[2] = 666
            STR[2] = "* I mean guest, and you#  ruin everything again!"
            FACESTR[3] = 666
            STR[3] = "* Get out of my sight,#  you Dummkopf!"
            FACESTR[4] = 674
            STR[4] = "* Or do I have to press#  the button of immense#  suffering again?"
        }
    }
    if (progress == 17 && (!instance_exists(obj_text_box)))
    {
        with (obj_db_disp1)
            image_speed = 0.2
        progress = 18
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            MAXSTR = 3
            STR[0] = "* ALRIGHT, ALRIGHT..."
            STR[1] = "* JEEZ, DOC! YOU COULD BE#  A BIT NICER TO ME!#* I JUST FOUND TRUE LOVE!"
            STR[2] = "* FINE, I'M LEAVING!"
            STR[3] = "* BUT I'LL SEE YOU AROUND,#  SUNSHINE!"
        }
    }
    if (progress == 18)
    {
        if instance_exists(obj_text_box)
        {
            with (obj_text_box)
            {
                if (voicenow == 1)
                    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
            }
        }
        else
        {
            with (obj_db_disp1)
            {
                image_speed = 0
                image_index = 0
            }
            if (obj_db_disp1.x < 650)
                obj_db_disp1.x += 3
            else
            {
                progress = 19
                with (obj_db_disp1)
                    instance_destroy()
            }
        }
    }
    if (progress == 19 && (!instance_exists(obj_db_disp1)))
    {
        with (obj_music_player)
            musictrack = 142
        with (obj_db_eli1)
            image_index = 3
        with (obj_pro_stopped)
            image_index = 1
        progress = 20
        with (instance_create(x, y, obj_text_box))
        {
            textvoice = 104
            MAXSTR = 6
            FACESTR[0] = 666
            STR[0] = "* Ugh...#* He's insufferable,#  isn't he?"
            FACESTR[1] = 664
            STR[1] = "* Let's get back to the#  experimen-"
            FACESTR[2] = 667
            STR[2] = "* No, wait. I forgot#  that I still had some#  things to take care of."
            FACESTR[3] = 664
            STR[3] = "* We'll do it later."
            FACESTR[4] = 670
            STR[4] = "* Oh, wunderbar!#* You have a cell phone!"
            FACESTR[5] = 664
            STR[5] = "* If you give me your#  number, I can call#  you later!"
            FACESTR[6] = 664
            STR[6] = "* Do you want to give me#  your number?#  Yes         No"
            choices = 1
        }
    }
    if (progress == 20)
    {
        if (global.textboxchoice == 1)
        {
            global.elinumber = 1
            progress = 21
            global.textboxchoice = 0
            with (obj_text_box)
            {
                textvoice = 104
                MAXSTR = 2
                FACESTR[0] = 664
                STR[0] = "* Danke! I'll give you#  a call whenever I have#  something to tell you!"
                FACESTR[1] = 670
                STR[1] = "* Ah, today is a very#  good day, isn't it?"
                FACESTR[2] = 664
                STR[2] = "* But for now...#* Auf Wiedersehen!"
            }
        }
        if (global.textboxchoice == 2)
        {
            progress = 21
            global.textboxchoice = 0
            with (obj_text_box)
            {
                textvoice = 104
                MAXSTR = 3
                FACESTR[0] = 664
                STR[0] = "* Nein?#* Well, I understand you!"
                FACESTR[1] = 666
                STR[1] = "* I know how annoying it#  can be if someone#  constantly bothers you."
                FACESTR[2] = 664
                STR[2] = "* That reminds me...#* I'll stop bothering#  you now!"
                FACESTR[3] = 664
                STR[3] = "* Auf Wiedersehen!"
            }
        }
    }
    if (progress == 21 && (!instance_exists(obj_text_box)))
    {
        with (obj_db_eli1)
        {
            if (x < 650)
            {
                x += 2
                image_speed = 0.2
                sprite_index = spr_eli_right
            }
            else
            {
                other.progress = 22
                audio_play_sound(snd_close1, 1, false)
            }
        }
    }
    if (progress == 22 && (!instance_exists(obj_text_box)))
    {
        with (obj_db_eli1)
            instance_destroy()
        with (obj_pro_stopped)
            instance_destroy()
        instance_destroy()
    }
}

