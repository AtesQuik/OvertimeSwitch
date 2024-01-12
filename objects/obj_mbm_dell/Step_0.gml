if (progress == 0 && distance_to_object(obj_protagonist) < 220)
{
    with (obj_music_player)
        instance_destroy()
    progress = 1
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 1
        instance_destroy()
    }
    alarm[0] = 30
}
if (progress == 2)
{
    if (obj_view_parent.x < 690)
        obj_view_parent.x += 2
    else
        progress = 3
}
if (progress == 3)
{
    progress = 4
    if (global.genocide == 0)
    {
        alarm[1] = 780
        with (instance_create(0, 0, obj_music_player))
            musictrack = 186
    }
    else
    {
        genocide = 1
        if (global.delltimesdied == 0 || global.reloaddellhired == 1 || global.reloaddellkilled == 1)
        {
            if (global.reloaddellhired == 1)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 3
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* oh, youre back?"
                    FACESTR[1] = 636
                    STR[1] = "* heh. you must have#  forgotten to save."
                    FACESTR[2] = 637
                    STR[2] = "* unless you knew what#  was coming."
                    FACESTR[3] = 634
                    STR[3] = "* either way, here we#  go again."
                }
            }
            else if (global.reloaddellkilled == 1)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 3
                    textvoice = 85
                    FACESTR[0] = 635
                    STR[0] = "* hm.#* something is off."
                    FACESTR[1] = 634
                    STR[1] = "* dont tell me youve#  already killed me#  once before."
                    FACESTR[2] = 634
                    STR[2] = "* well, if my death#  means so much to#  you..."
                    FACESTR[3] = 640
                    STR[3] = "* ...i must be doing#  something right."
                }
            }
            else
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 13
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* howdy."
                    FACESTR[1] = 634
                    STR[1] = "* long day, hm?"
                    FACESTR[2] = 635
                    STR[2] = "* well, ive a question#  for ya."
                    FACESTR[3] = 634
                    STR[3] = "* do you think everyone#  deserves mercy?"
                    FACESTR[4] = 635
                    STR[4] = "* heh, wrong question,#  i guess."
                    FACESTR[5] = 634
                    STR[5] = "* do you think anyone#  deserves it?"
                    FACESTR[6] = 634
                    STR[6] = "* no need to answer.#* your actions speak#  louder than words."
                    FACESTR[7] = 634
                    STR[7] = "* still time to turn#  back, pardner."
                    FACESTR[8] = 634
                    STR[8] = "* cause this town ain't#  big enough for the#  both of us."
                    FACESTR[9] = 634
                    STR[9] = "* ..."
                    FACESTR[10] = 634
                    STR[10] = "* no?"
                    FACESTR[11] = 634
                    STR[11] = "* well."
                    FACESTR[12] = 634
                    STR[12] = "* ive got the blueprints#  for your gravestone#  right here."
                    FACESTR[13] = 634
                    STR[13] = "* lets do this#  texas style."
                }
            }
        }
        else
        {
            if (global.delltimesdied == 1)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 2
                    textvoice = 85
                    FACESTR[0] = 635
                    STR[0] = "* hm."
                    FACESTR[1] = 634
                    STR[1] = "* is something bothering#  you?"
                    FACESTR[2] = 637
                    STR[2] = "* dont worry.#* i wont let that feeling#  last long."
                }
            }
            if (global.delltimesdied == 2)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 4
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* wait, dont tell me."
                    FACESTR[1] = 634
                    STR[1] = "* ive seen that#  expression before."
                    FACESTR[2] = 634
                    STR[2] = "* thats the face of#  someone who died twice#  in a row."
                    FACESTR[3] = 636
                    STR[3] = "* ah, i knew it.#* what do i win?"
                    FACESTR[4] = 637
                    STR[4] = "* oh, a rematch.#* lets go."
                }
            }
            if (global.delltimesdied == 3)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 2
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* that expression of#  yours reminds me of a#  pal of mine."
                    FACESTR[1] = 634
                    STR[1] = "* looks just like you."
                    FACESTR[2] = 636
                    STR[2] = "* except last time i#  checked, they didnt die#  three times in a row."
                }
            }
            if (global.delltimesdied == 4)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 2
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* by the looks of it,#  you died four times#  so far."
                    FACESTR[1] = 637
                    STR[1] = "* come on, pardner.#* you should have#  four-seen it."
                    FACESTR[2] = 636
                    STR[2] = "* hehe.#* what a killing joke."
                }
            }
            if (global.delltimesdied == 5)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 3
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* that expression#  of yours..."
                    FACESTR[1] = 638
                    STR[1] = "* do you ever just wonder#  when your life went#  wrong?"
                    FACESTR[2] = 634
                    STR[2] = "* well, im sure for you#  it was when you died#  five times in a row."
                    FACESTR[3] = 637
                    STR[3] = "* come on, lets make your#  life even worse!"
                }
            }
            if (global.delltimesdied == 6)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 3
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* that expression...#* youve died six times#  in a row already?"
                    FACESTR[1] = 634
                    STR[1] = "* darn."
                    FACESTR[2] = 634
                    STR[2] = "* now i gotta start#  counting on my other#  hand."
                    FACESTR[3] = 636
                    STR[3] = "* i knew i should have#  taken a pen and paper#  with me."
                }
            }
            if (global.delltimesdied == 7)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 2
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* you look like youve#  died seven times#  in a row."
                    FACESTR[1] = 634
                    STR[1] = "* dont worry."
                    FACESTR[2] = 636
                    STR[2] = "* seven is a grand#  number."
                }
            }
            if (global.delltimesdied == 8)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 5
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* you look like you died#  eight times."
                    FACESTR[1] = 635
                    STR[1] = "* eight."
                    FACESTR[2] = 634
                    STR[2] = "* looks like an infinity#  symbol if you flip it#  on its side."
                    FACESTR[3] = 634
                    STR[3] = "* do you plan on dying#  infinite times?"
                    FACESTR[4] = 637
                    STR[4] = "* tsk tsk tsk.#* at least ask me first."
                    FACESTR[5] = 636
                    STR[5] = "* well alright, i cant#  say no."
                }
            }
            if (global.delltimesdied == 9)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 2
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* hm, you look like you#  died nine times in#  a row."
                    FACESTR[1] = 635
                    STR[1] = "* you know, im running#  out of cool things to#  say."
                    FACESTR[2] = 637
                    STR[2] = "* so please, either stay#  dead or come up with#  something yourself."
                }
            }
            if (global.delltimesdied == 10)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 3
                    textvoice = 85
                    FACESTR[0] = 636
                    STR[0] = "* that expression...#* wowie, pardner.#* ten gosh darn times."
                    FACESTR[1] = 634
                    STR[1] = "* boy, i dont even know#  what to say."
                    FACESTR[2] = 637
                    STR[2] = "* thats gotta be some#  sort of record."
                    FACESTR[3] = 640
                    STR[3] = "* well, lets beat that#  record, shall we?"
                }
            }
            if (global.delltimesdied > 10)
            {
                with (instance_create(x, y, obj_text_box))
                {
                    fontname = 5
                    MAXSTR = 0
                    textvoice = 85
                    FACESTR[0] = 634
                    STR[0] = "* im running out of cool#  things to say.#* lets just do this."
                }
            }
        }
    }
}
if (progress == 5)
{
    progress = 6
    with (instance_create(x, y, obj_text_box))
    {
        fontname = 5
        MAXSTR = 26
        textvoice = 85
        STR[0] = "* well, here you are."
        STR[1] = "* only a few steps prevent#  you from meeting your#  destiny."
        STR[2] = "* in a bit, you will meet#  misha."
        STR[3] = "* you and him will decide#  how all of this will end.#* or if it even ends."
        STR[4] = "* but thats the future."
        STR[5] = "* now.#* its high noon.#* time to judge you."
        STR[6] = "* right?"
        STR[7] = "* ..."
        STR[8] = "* no.#* it's not my job to do#  any of that."
        STR[9] = "* everyone else did it#  before me already."
        STR[10] = "* but who are they to#  judge you?#* they're mercenaries."
        STR[11] = "* they kill, steal, destroy#  on a daily basis."
        STR[12] = "* seems hypocritical to me."
        STR[13] = "* i just want to show#  you all the things#  youve done so far."
        STR[14] = "* you can come to your#  own conclusion then."
        STR[15] = "* but first, let me ask#  you a question."
        STR[16] = "* ever inspected an enemy?"
        STR[17] = "* if ya did, youd have#  noticed it spat some#  numbers in your face."
        STR[18] = "* " + "\"" + "DMG" + "\"" + ".#* you know what that means?"
        STR[19] = "* its an acronym."
        STR[20] = "* it stands for#  " + "\"" + "DEPRESSION MAGNITUDE" + "\"" + "."
        STR[21] = "* a way of quantifying the#  sadness of someone on#  a scale from 1 to 5."
        STR[22] = "* a person with 1 DMG is#  slightly discontented."
        STR[23] = "* a person with 5 DMG...#* has a deathwish cause#  of immense grief."
        STR[24] = "* the higher the DMG, the#  less they care."
        STR[25] = "* the less they hold back#  when they want to hurt#  you."
        STR[26] = "* all because they cant#  control this world.#* less control, more DMG."
    }
}
if (progress == 6 && (!instance_exists(obj_text_box)))
{
    progress = 7
    alarm[3] = 30
}
if (progress == 8)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 167
    progress = 9
    if (global.enemieskilled == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 27
            textvoice = 85
            FACESTR[0] = 639
            STR[0] = "* ..."
            FACESTR[1] = 634
            STR[1] = "* ...but you."
            FACESTR[2] = 634
            STR[2] = "* you didnt let their DMG#  get to you.#* you reduced it."
            FACESTR[3] = 634
            STR[3] = "* you gave people what they#  needed."
            FACESTR[4] = 634
            STR[4] = "* sometimes it was#  just a little bit,#  sometimes it was a lot."
            FACESTR[5] = 635
            STR[5] = "* other times you had to#  suffer in order to please."
            FACESTR[6] = 634
            STR[6] = "* but whenever you did, you#  did it in good earnest."
            FACESTR[7] = 634
            STR[7] = "* you refused to give anyone#  up."
            FACESTR[8] = 634
            STR[8] = "* now, was that always#  the right choice?#* i dont know."
            FACESTR[9] = 635
            STR[9] = "* well."
            FACESTR[10] = 634
            STR[10] = "* you are close to#  finally meeting the#  mann brothers."
            FACESTR[11] = 634
            STR[11] = "* between them and you#  is only a bodyguard."
            FACESTR[12] = 634
            STR[12] = "* your actions...#* will determine all of#  our lives."
            FACESTR[13] = 634
            STR[13] = "* if you refuse to#  fight..."
            FACESTR[14] = 634
            STR[14] = "* he will strike you down#  and the war in the#  badlands will continue."
            FACESTR[15] = 635
            STR[15] = "* if you manage to kill#  him though, you can#  finish your job."
            FACESTR[16] = 638
            STR[16] = "* and the battles will#  end forever."
            FACESTR[17] = 634
            STR[17] = "* hm, whats wrong?"
            FACESTR[18] = 636
            STR[18] = "* oh, i dont know what#  you need to do."
            FACESTR[19] = 637
            STR[19] = "* i never even thought#  youd get this far."
            FACESTR[20] = 634
            STR[20] = "* its up to you."
            FACESTR[21] = 634
            STR[21] = "* our fate is in your#  hands."
            FACESTR[22] = 634
            STR[22] = "* im sure you will figure#  it all out."
            FACESTR[23] = 634
            STR[23] = "* youve made many#  difficult decisions#  during your journey."
            FACESTR[24] = 634
            STR[24] = "* this is not the first,#  nor will it be#  the last."
            FACESTR[25] = 634
            STR[25] = "* do whatever you think#  is best."
            FACESTR[26] = 634
            STR[26] = "* this may very well#  be the last time we#  will see each other."
            FACESTR[27] = 637
            STR[27] = "* so, good luck, pardner."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 32
            textvoice = 85
            FACESTR[0] = 639
            STR[0] = "* ..."
            FACESTR[1] = 634
            STR[1] = "* now, think back to your#  actions."
            FACESTR[2] = 634
            STR[2] = "* think about all the#  things that led you to#  this very moment."
            FACESTR[3] = 634
            STR[3] = "* were you always in#  control?"
            FACESTR[4] = 634
            STR[4] = "* or did you have to#  take actions in order#  to gain control?"
            FACESTR[5] = 634
            STR[5] = "* was it all necessary?"
            FACESTR[6] = 634
            STR[6] = "* reflect on that."
            FACESTR[7] = 634
            STR[7] = "* be honest."
            FACESTR[8] = 634
            STR[8] = "* not with me, but with#  yourself."
            FACESTR[9] = 634
            STR[9] = "* i am not here to judge.#* thats what you have#  to do."
            FACESTR[10] = 635
            STR[10] = "* i just want to show#  you what you have done."
            FACESTR[11] = 634
            STR[11] = "* let me begin."
            FACESTR[12] = 634
            STR[12] = (((("* so far, you killed#  " + string(global.enemieskilled)) + " creatures and hired#  exactly ") + string(global.enemiesspared)) + ".")
            FACESTR[13] = 634
            STR[13] = "* how does that make you#  feel?"
            FACESTR[14] = 634
            STR[14] = "* do you feel proud?#* ashamed?"
            FACESTR[15] = 634
            STR[15] = "* did you want to hire#  more? kill more?"
            FACESTR[16] = 634
            STR[16] = "* did you have a goal#  you were trying to work#  towards?"
            FACESTR[17] = 634
            STR[17] = "* if yes, did you#  achieve it?"
            FACESTR[18] = 634
            STR[18] = "* or did something, or#  someone stop you?"
            FACESTR[19] = 634
            STR[19] = "* if you had the power#  to reset, what would#  you change?"
            FACESTR[20] = 634
            STR[20] = "* do you think any of it#  matters in the end?"
            FACESTR[21] = 635
            STR[21] = "* hey, calm down.#* i dont want answers."
            FACESTR[22] = 634
            STR[22] = "* i just want to make you#  think."
            FACESTR[23] = 634
            STR[23] = "* now.#* lets talk about some#  special people."
            FACESTR[24] = 634
            if (global.sanikilled == 0)
                STR[24] = "* a doctor tried to#  imprison you forever,#  but you spared him."
            else
                STR[24] = "* you murdered the doctor#  that gave all to save#  your life."
            FACESTR[25] = 634
            if (global.sniperkilled == 0)
                STR[25] = "* a marksman tried to#  kill you, yet you did#  not return the favor."
            else
                STR[25] = "* you trespassed and#  killed the man who#  protected his land."
            if (global.janekilled == 0)
                FACESTR[26] = 634
            else
                FACESTR[26] = 640
            if (global.janekilled == 0)
                STR[26] = "* a dangerous maniac#  want to blow you up,#  yet you hired him."
            else
                STR[26] = "* a soldier wanted to die#  protecting his country,#  so you delivered."
            FACESTR[27] = 634
            if (global.tavishkilled == 0)
                STR[27] = "* a bounty hunter wanted#  only your head, yet you#  spared him."
            else
                STR[27] = "* you stopped a man gone#  mad by his addiction#  dead in his tracks."
            FACESTR[28] = 634
            if (global.spykilled == 0)
                STR[28] = "* a spy tortured you, so#  you decided he'd be#  valuable to you later."
            else
                STR[28] = "* you met a spy who#  needed money to live,#  so you ended his life."
            FACESTR[29] = 634
            if (global.scoutkilled == 0)
                STR[29] = "* a boy kept pestering#  you, so you hired him.#* now he'll never leave."
            else
                STR[29] = "* a lonely, friendless#  boy wanted your love,#  you gave him death."
            FACESTR[30] = 634
            STR[30] = "* one more person to#  hire or kill."
            FACESTR[31] = 634
            STR[31] = "* maybe youre more aware#  of your actions now."
            FACESTR[32] = 634
            STR[32] = "* if you are, you can#  keep tab on whatever#  you will do yourself."
        }
    }
}
if (progress == 9 && (!instance_exists(obj_text_box)))
{
    if (global.janekilled == 0)
        progress = 13
    else
    {
        image_index = 1
        progress = 10
        alarm[4] = 30
    }
}
if (progress == 11)
{
    progress = 12
    with (instance_create(x, y, obj_text_box))
    {
        choices = 1
        fontname = 5
        MAXSTR = 9
        textvoice = 85
        FACESTR[0] = 635
        STR[0] = "* one last thing."
        FACESTR[1] = 634
        STR[1] = "* something bout you#  always struck me as...#* kinda odd."
        FACESTR[2] = 634
        STR[2] = "* sometimes, when you#  were thrown into a#  situation..."
        FACESTR[3] = 635
        STR[3] = "* you kinda seemed like#  you knew what you were#  doing."
        FACESTR[4] = 634
        STR[4] = "* as if you had seen#  it all before.#* been there, done that."
        FACESTR[5] = 634
        STR[5] = "* like you had the power#  to see into the future."
        FACESTR[6] = 635
        STR[6] = "* please, answer just#  this one question."
        FACESTR[7] = 634
        STR[7] = "* if you really had#  that power..."
        FACESTR[8] = 634
        STR[8] = "* wouldn't it be your#  job to do the right#  thing?"
        FACESTR[9] = 634
        STR[9] = " # #   Yes             No"
    }
}
if (progress == 12)
{
    if (global.textboxchoice == 1)
    {
        global.textboxchoice = 0
        progress = 13
        with (obj_text_box)
        {
            fontname = 5
            MAXSTR = 1
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* alright."
            FACESTR[1] = 640
            STR[1] = "* then why did you murder#  my only friend?"
        }
    }
    if (global.textboxchoice == 2)
    {
        global.textboxchoice = 0
        progress = 13
        with (obj_text_box)
        {
            fontname = 5
            MAXSTR = 1
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* sure.#* guess theres no right#  or wrong answer."
            FACESTR[1] = 640
            STR[1] = "* you yellow-bellied,#  gutless coward."
        }
    }
}
if (progress == 13 && instance_exists(obj_text_box))
{
    if (obj_text_box.N == 1)
    {
        with (obj_text_box)
            dontplay = 1
        image_index = 3
        with (obj_music_player)
            instance_destroy()
    }
}
if (progress == 13 && (!instance_exists(obj_text_box)))
{
    if (obj_view_parent.x > obj_pro_stopped.x)
        obj_view_parent.x -= 2
    else
        progress = 14
}
if (progress == 14)
{
    global.dellprogress = 1
    with (obj_pro_stopped)
        instance_destroy()
    instance_destroy()
}
if (genocide == 1)
{
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        genocide = 2
        global.playerdirection = 1
        instance_create(obj_pro_stopped.x, obj_pro_stopped.y, obj_fake_soul_battlestart)
    }
}

