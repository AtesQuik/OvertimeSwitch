if (global.genocide == 1)
{
    if (sparemeter > 0)
    {
        global.battleapproachstring = "* Scout spares you."
        enemyinfo = "Just stopped loving you."
        sparemeter = 0
        sparesyou = 0
        global.evadetime = 1
        with (obj_music_player)
            instance_destroy()
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 98
            bubbleshape = 2
            MAXSTR = 29
            STR[0] = "What?"
            STR[1] = "You're not going to#kill me?"
            STR[2] = "Hot damn!"
            STR[3] = "That means..."
            STR[4] = "You love me too?"
            STR[5] = "I can't believe it!"
            STR[6] = "Now we can finally#go on a date#together!"
            STR[7] = "And get to know...#...each other..."
            STR[8] = "And...#And..."
            STR[9] = "..."
            STR[10] = "You know what?"
            STR[11] = "No...this is not#going to work."
            STR[12] = "Fighting you has#made me realize#something."
            STR[13] = "I was completely#blinded by love that#I didn't even notice#your flaws."
            STR[14] = "I mean..."
            STR[15] = "Killing some people#for your job, sure,#who doesn't?"
            STR[16] = "But actually going#out of your way to#kill every single#one of them?"
            STR[17] = "That's where even#I draw the line."
            STR[18] = "And...#I don't actually#know you!"
            STR[19] = "I saw you only#briefly, you never#even said a single#word to me!"
            STR[20] = "I wasn't after you."
            STR[21] = "I was just chasing#an idea."
            STR[22] = "My own fantasy."
            STR[23] = "..."
            STR[24] = "Hehe..."
            STR[25] = "Never thought I'd#turn a gal like you#down."
            STR[26] = "Or any at all,#really."
            STR[27] = "But no."
            STR[28] = "This isn't right.#For so many reasons."
            STR[29] = "I'm sorry."
        }
    }
    else
    {
        sparesyou = 1
        with (instance_create(x, 0, obj_speech_bubble))
        {
            voiceon = 1
            textvoice = 98
            bubbleshape = 2
            MAXSTR = 0
            STR[0] = "..."
        }
    }
}

