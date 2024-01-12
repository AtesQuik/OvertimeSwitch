if (progress == 1 && (!instance_exists(obj_text_box)))
{
    with (obj_music_player)
        instance_destroy()
    progress = 2
    audio_play_sound(snd_step, 1, false)
    global.textboxtop = 1
}
if (progress == 2)
{
    if (eliy > 0)
        eliy -= 0.5
    else
    {
        progress = 3
        with (obj_pro_stopped)
            image_index = 0
    }
}
if (progress == 3)
{
    progress = 4
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 22
        textvoice = 104
        FACESTR[0] = 666
        STR[0] = "* So...here we are.#* You and I."
        FACESTR[1] = 666
        STR[1] = "* You managed to get past#  all of my soldiers."
        FACESTR[2] = 666
        STR[2] = "* Like it was nothing."
        FACESTR[3] = 666
        STR[3] = "* Unfortunately, your#  journey ends here#  and now."
        FACESTR[4] = 666
        STR[4] = "* Because..."
        FACESTR[5] = 664
        STR[5] = "* ...this test is over!"
        FACESTR[6] = 665
        STR[6] = "* I'm sure you read all#  of my journal entries#  already."
        FACESTR[7] = 664
        STR[7] = "* I just wanted to see#  if my soldiers really#  were unstoppable."
        FACESTR[8] = 673
        STR[8] = "* But apparently, they#  aren't."
        FACESTR[9] = 675
        STR[9] = "* All it takes for#  them to be stopped is#  a good person."
        FACESTR[10] = 676
        STR[10] = "* So my plan is sadly#  never going to work."
        FACESTR[11] = 678
        STR[11] = "* There's just too many#  good people out there."
        FACESTR[12] = 664
        STR[12] = "* I'm just going to#  remove their machines#  in this case."
        FACESTR[13] = 664
        STR[13] = "* To let them rest."
        FACESTR[14] = 670
        STR[14] = "* But you!"
        FACESTR[15] = 664
        STR[15] = "* You're the strongest#  fighter I have seen#  in my entire life."
        FACESTR[16] = 664
        STR[16] = "* You don't even need#  to use violence to#  win your battles!"
        FACESTR[17] = 670
        STR[17] = "* I see a lot of fun#  experiments in our#  future!"
        FACESTR[18] = 664
        STR[18] = "* For now, however...  "
        FACESTR[19] = 664
        STR[19] = "* I'm afraid it's time#  for me to go."
        FACESTR[20] = 664
        STR[20] = "* Thank you for your#  cooperation."
        FACESTR[21] = 664
        STR[21] = "* You can now finish#  your mission."
        FACESTR[22] = 670
        STR[22] = "* Goodbye!"
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    image_speed = 0.2
}
if (progress == 5)
{
    if (eliy < 110)
        eliy += 2
    else
        progress = 6
}
if (progress == 6)
{
    progress = 7
    global.truehospitalprogress = 8
    with (obj_pro_stopped)
        instance_destroy()
    with (instance_create(x, y, obj_music_player))
        musictrack = 191
}

