if (progress == 0)
{
    if (whiteness > 0)
        whiteness -= 0.005
    else
        progress = 1
}
if (progress == 1)
{
    progress = 2
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 5
        textvoice = 83
        FACESTR[0] = 629
        STR[0] = "* Now, look mate...#* We're not mad at ye."
        FACESTR[1] = 629
        STR[1] = "* We just don' want you#  to command us aroun',#  ya know?"
        FACESTR[2] = 629
        STR[2] = "* Tell ya what.#* Since ye're not our#  boss anymore... "
        FACESTR[3] = 629
        STR[3] = "* How about ye get a new#  title?"
        FACESTR[4] = 629
        STR[4] = "* 'Cause you like#  playing with fire so#  much, how about..."
        FACESTR[5] = 629
        STR[5] = "* Pyro?"
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
        MAXSTR = 42
        textvoice = 83
        FACESTR[0] = 627
        STR[0] = "* You like that?#* Brilliant!"
        FACESTR[1] = 627
        STR[1] = "* Oh, and keep the suit."
        FACESTR[2] = 630
        STR[2] = "* Ye wanted to have it,#  and you'll use it a lot#  in the future I bet."
        FACESTR[3] = 627
        STR[3] = "* ..."
        FACESTR[4] = 627
        STR[4] = "* Oh!#* You're still here,#  right."
        FACESTR[5] = 627
        STR[5] = "* Thanks a bunch for#  'elping out us#  balloonicorns, luv."
        FACESTR[6] = 627
        STR[6] = "* Remember I told ye#  everyone who dies#  becomes a ballonicorn?"
        FACESTR[7] = 627
        STR[7] = "* Ever wondered why#  ye never turned into#  one, although you died?"
        FACESTR[8] = 627
        STR[8] = "* It's your heart.#* Well, the machine tha'#  keeps ye alive."
        FACESTR[9] = 627
        STR[9] = "* The first time I saw#  it, I knew I recognized#  it from somewhere."
        FACESTR[10] = 627
        STR[10] = "* Pyro over here has one#  too."
        FACESTR[11] = 627
        STR[11] = "* It prevents you from#  truly dying."
        FACESTR[12] = 629
        STR[12] = "* You're sorta kept in#  a limbo, see?#* Never really dead."
        FACESTR[13] = 627
        STR[13] = "* Also why you can't#  stay here for long.#* Unless ye choose to."
        FACESTR[14] = 627
        STR[14] = "* That's wha' Pyro did."
        FACESTR[15] = 627
        STR[15] = "* Pyro didn't turn into#  a balloonicorn, just#  like you."
        FACESTR[16] = 627
        STR[16] = "* Overpowered us all.#* Became our boss,#  against our will."
        FACESTR[17] = 627
        STR[17] = "* Kept demanding new#  things upon new#  things."
        FACESTR[18] = 627
        STR[18] = "* And became stronger#  all the time."
        FACESTR[19] = 627
        STR[19] = "* But how can we stay#  mad?#* 's just a child."
        FACESTR[20] = 627
        STR[20] = "* Perhaps this was the#  first time Pyro had#  control over his life."
        FACESTR[21] = 627
        STR[21] = "* But..."
        FACESTR[22] = 630
        STR[22] = "* I bet ye dun'#  wanna be here anymore,#  do ye?"
        FACESTR[23] = 627
        STR[23] = "* Nah, you don't.#* Dun' worry, your heart#  will take care of it."
        FACESTR[24] = 627
        STR[24] = "* Won't take long."
        FACESTR[25] = 627
        STR[25] = "* ..."
        FACESTR[26] = 627
        STR[26] = "* So...with ol' Pyro#  out of the picture..."
        FACESTR[27] = 627
        STR[27] = "* Does that mean this#  place doesn't have a#  ruler anymore?"
        FACESTR[28] = 627
        STR[28] = "* Hm."
        FACESTR[29] = 627
        STR[29] = "* What if..."
        FACESTR[30] = 627
        STR[30] = "* I took over?"
        FACESTR[31] = 627
        STR[31] = "* I could be the mayor!#* Yeah, that's great!"
        FACESTR[32] = 630
        STR[32] = "* Dun' worry, Pyro.#* I 'aven't forgotten#  you."
        FACESTR[33] = 627
        STR[33] = "* In fact, I'll rename#  this place!#* To PYROLAND!"
        FACESTR[34] = 627
        STR[34] = "* And you, luv, can#  visit it any time! "
        FACESTR[35] = 627
        STR[35] = "* How's that sound?"
        FACESTR[36] = 627
        STR[36] = "* " + "\"" + "Mayor Ballooney#  the Balloonicorn of#  Pyroland" + "\"" + "."
        FACESTR[37] = 627
        STR[37] = "* I like the sound of#  tha'. Never had a#  title before."
        FACESTR[38] = 627
        STR[38] = "* Alright luv."
        FACESTR[39] = 627
        STR[39] = "* I think I'll take care#  of the rest now."
        FACESTR[40] = 627
        STR[40] = "* Thanks for yer help.#* I have a feeling we'll#  meet again one day."
        FACESTR[41] = 630
        STR[41] = "* Cheerio!"
        FACESTR[42] = 627
        STR[42] = "* Come, Pyro, we've got#  a lot of work to do."
    }
}
if (progress == 5 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 4)
        image_index = 0
}
if (progress == 5 && (!instance_exists(obj_text_box)))
{
    image_index = 2
    progress = 6
    alarm[2] = 30
    with (obj_music_player)
        instance_destroy()
}
if (progress == 7)
{
    if (y > -20)
        y -= 0.5
}

