if (nodell == 0)
{
    if (progress == 1 && (!instance_exists(obj_text_box)))
    {
        if (!instance_exists(obj_music_player))
        {
            with (instance_create(0, 0, obj_music_player))
                musictrack = 190
        }
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 25
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* howdy."
            FACESTR[1] = 635
            STR[1] = "* anyone there?"
            FACESTR[2] = 634
            STR[2] = "* well, ill just leave#  a message then."
            FACESTR[3] = 634
            STR[3] = "* just to tell you what#  youve been missing out#  on."
            FACESTR[4] = 635
            STR[4] = "* since the mann bros#  are both dead..."
            FACESTR[5] = 634
            STR[5] = "* the badlands are slowly#  becoming more peaceful."
            FACESTR[6] = 634
            STR[6] = "* the red and blu teams#  have disbanded."
            FACESTR[7] = 639
            STR[7] = "* so were all out of#  a job now."
            FACESTR[8] = 634
            STR[8] = "* and everyone is just#  going their own ways."
            if (global.sanikilled == 0)
            {
                FACESTR[9] = 635
                STR[9] = "* i actually saw our doc#  leave the hospital for#  once."
                FACESTR[10] = 634
                STR[10] = "* he arrived here after#  you had already left#  though."
                FACESTR[11] = 634
                STR[11] = "* havent seen him since#  then. "
                FACESTR[12] = 634
                STR[12] = "* the hospital seems to#  be even more abandoned#  now."
            }
            else
            {
                FACESTR[9] = 634
                STR[9] = "* i recently went to#  the old hospital in#  thunder mountain."
                FACESTR[10] = 635
                STR[10] = "* wanted to say goodbye#  to the ol doc."
                FACESTR[11] = 635
                STR[11] = "* or rather hello, cause#  i didnt talk to him#  for a long time."
                FACESTR[12] = 634
                STR[12] = "* didnt see him anywhere#  though.#* must have left already."
            }
            if (global.sniperkilled == 0)
            {
                FACESTR[13] = 634
                STR[13] = "* oh, mundy also wanted#  me to leave a message#  for ya."
                FACESTR[14] = 635
                STR[14] = "* said hes gonna move#  back in with his#  parents."
                FACESTR[15] = 635
                STR[15] = "* didnt seem so thrilled#  about it though."
                FACESTR[16] = 634
                STR[16] = "* he hopes to hear from#  you soon."
            }
            else
            {
                FACESTR[13] = 634
                STR[13] = "* jane and i are gonna#  move out of teufort#  soon too."
                FACESTR[14] = 635
                STR[14] = "* were gonna live in the#  sniper van for a while."
                FACESTR[15] = 635
                STR[15] = "* its just catchin dust#  here in dustbowl since#  no one is using it."
                FACESTR[16] = 638
                STR[16] = "* and i dont think#  anyone else would ever#  use it again."
            }
            if (global.spykilled == 0)
            {
                FACESTR[17] = 635
                STR[17] = "* the spy also#  stopped by."
                FACESTR[18] = 634
                STR[18] = "* he said hes waiting#  for you to give him#  sumthin to do."
                FACESTR[19] = 634
                STR[19] = "* then he also vanished."
                FACESTR[20] = 636
                STR[20] = "* kinda glad about it.#* he always kept#  destroyin my buildings."
            }
            else
            {
                FACESTR[17] = 635
                STR[17] = "* also, nobody has#  sabotaged my buildings#  in a while."
                FACESTR[18] = 636
                STR[18] = "* really glad about that."
                FACESTR[19] = 634
                STR[19] = "* i guess that no-good#  spy has also left."
                FACESTR[20] = 637
                STR[20] = "* or hes just invisible#  again and is waiting#  for the right moment."
            }
            if (global.scoutkilled == 0)
            {
                FACESTR[21] = 635
                STR[21] = "* what else..."
                FACESTR[22] = 634
                STR[22] = "* right, this young#  fella came by and#  asked for you."
                FACESTR[23] = 634
                STR[23] = "* kept mumblin about#  missing you or#  sumthin."
                FACESTR[24] = 635
                STR[24] = "* then he left quicker#  than he arrived."
                FACESTR[25] = 638
                STR[25] = "* felt a lil bad for#  the kid.#* seemed kinda lonely."
            }
            else
            {
                FACESTR[21] = 634
                STR[21] = "* speaking of buildings,#  i recently found a#  broken dispenser."
                FACESTR[22] = 635
                STR[22] = "* reminded me of the one#  i saw back in thunder#  mountain a lot."
                FACESTR[23] = 635
                STR[23] = "* i wonder what happened#  to it."
                FACESTR[24] = 635
                STR[24] = "* these things usually#  dont break on their#  own."
                FACESTR[25] = 634
                STR[25] = "* do you have any idea?"
            }
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        if (global.tavishkilled == 1)
        {
            if (global.janekilled == 0)
                progress = 3
        }
        else if (global.janekilled == 1)
        {
            progress = 20
            with (instance_create(x, y, obj_text_box))
            {
                fontname = 5
                MAXSTR = 15
                textvoice = 85
                FACESTR[0] = 638
                STR[0] = "* and jane..."
                FACESTR[1] = 640
                STR[1] = "* you already know what#  happened to him,#  dontcha?"
                FACESTR[2] = 635
                STR[2] = "* well, tavish is really#  mad now."
                FACESTR[3] = 634
                STR[3] = "* cause you killed both#  of his best friends,#  ya know."
                FACESTR[4] = 634
                STR[4] = "* he said hes gonna come#  after you."
                FACESTR[5] = 635
                STR[5] = "* not gonna stop him.#* his choice, right?"
                FACESTR[6] = 640
                STR[6] = "* just like how it was#  your choice to take#  his friends from him."
                FACESTR[7] = 634
                STR[7] = "* i thought about#  helping him..."
                FACESTR[8] = 639
                STR[8] = "* but i am just kinda#  tired."
                FACESTR[9] = 638
                STR[9] = "* probably gonna move#  back home now."
                FACESTR[10] = 639
                STR[10] = "* heh."
                FACESTR[11] = 636
                STR[11] = "* why am i even telling#  you this?"
                FACESTR[12] = 634
                STR[12] = "* not like you care.#* youve clearly shown#  that you dont."
                FACESTR[13] = 634
                STR[13] = "* thats it."
                FACESTR[14] = 634
                STR[14] = "* dont come back.#* theres nothing left#  for you here anyway."
                FACESTR[15] = 634
                STR[15] = "* bye."
            }
        }
        else
            progress = 3
    }
    if (progress == 3 && (!instance_exists(obj_text_box)))
    {
        progress = 4
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 3
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "DELL!"
            FACESTR[1] = 643
            STR[1] = "WHO ARE YOU#TALKING TO?"
            FACESTR[2] = 641
            STR[2] = "ARE YOU TALKING#TO HER?"
            FACESTR[3] = 644
            STR[3] = "I ORDER YOU TO GIVE#ME THE PHONE RIGHT#NOW!"
        }
    }
    if (progress == 4 && (!instance_exists(obj_text_box)))
    {
        progress = 5
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 0
            textvoice = 85
            FACESTR[0] = 635
            STR[0] = "* sure thing pal."
        }
    }
    if (progress == 5 && (!instance_exists(obj_text_box)))
    {
        if (global.tavishkilled == 1)
        {
            progress = 17
            with (instance_create(x, y, obj_text_box))
            {
                fontname = 4
                MAXSTR = 24
                textvoice = 86
                FACESTR[0] = 641
                STR[0] = "HELLO THERE!#WHATEVER YOU DID..."
                FACESTR[1] = 646
                STR[1] = "IT REALLY MADE#EVERYTHING WORSE."
                FACESTR[2] = 646
                STR[2] = "FOR SOME REASON,#EVER SINCE YOU#CAME BY..."
                FACESTR[3] = 646
                STR[3] = "...I HAVEN'T SEEN#TAVISH ANYMORE."
                FACESTR[4] = 645
                STR[4] = "DELL TOLD ME THAT#HE PROBABLY JUST#LEFT."
                FACESTR[5] = 645
                STR[5] = "JUST LIKE EVERYONE#ELSE."
                FACESTR[6] = 646
                STR[6] = "BUT THEN WHY#DIDN'T HE EVEN#SAY GOODBYE?"
                FACESTR[7] = 646
                STR[7] = "I THOUGHT WE#WERE FRIENDS..."
                FACESTR[8] = 645
                STR[8] = "..."
                FACESTR[9] = 646
                STR[9] = "WELL, MAYBE HE'LL#COME BACK SOMETIME#IN THE FUTURE."
                FACESTR[10] = 641
                STR[10] = "OHH, AND PERHAPS#EVEN YOU DECIDE#TO STOP BY?"
                FACESTR[11] = 641
                STR[11] = "THEN WE CAN ALL#HANG OUT TOGETHER."
                FACESTR[12] = 641
                STR[12] = "I AM SURE YOU TWO#WOULD LIKE EACH#OTHER A LOT."
                FACESTR[13] = 641
                STR[13] = "OH, ALMOST FORGOT!"
                FACESTR[14] = 641
                STR[14] = "THE POLICE ARE#AFTER US NOW!"
                FACESTR[15] = 641
                STR[15] = "BECAUSE WE WERE#MERCENARIES AND#DESTROYED SO MUCH."
                FACESTR[16] = 643
                STR[16] = "APPARENTLY THAT'S#A WAR CRIME#NOWADAYS."
                FACESTR[17] = 643
                STR[17] = "THIS COUNTRY IS#GOING DOWNHILL!"
                FACESTR[18] = 645
                STR[18] = "ANYWAY, TURNS OUT#THE MANN BROTHERS#ALWAYS MADE SURE"
                FACESTR[19] = 645
                STR[19] = "EVERYTHING WE DID#STAYED A SECRET."
                FACESTR[20] = 645
                STR[20] = "SO THAT WE DIDN'T#GO TO JAIL."
                FACESTR[21] = 646
                STR[21] = "WELL...#THEY ARE NOT#HERE ANYMORE."
                FACESTR[22] = 646
                STR[22] = "BUT, THAT'S OKAY!#DELL SAID HE CAN#TAKE CARE OF IT!"
                FACESTR[23] = 646
                STR[23] = "THEY'RE NOT REALLY#GOING TO HANG US,#ARE THEY?"
                FACESTR[24] = 646
                STR[24] = "HEHEHE..."
            }
        }
        else
        {
            if (global.tavishhired == 1)
                progress = 6
            else
                progress = 17
            with (instance_create(x, y, obj_text_box))
            {
                fontname = 4
                if (global.tavishhired == 1)
                    MAXSTR = 18
                else
                    MAXSTR = 33
                textvoice = 86
                FACESTR[0] = 641
                STR[0] = "HELLO THERE!#WHATEVER YOU DID..."
                FACESTR[1] = 641
                STR[1] = "IT MADE EVERYTHING#TURN OUT WELL IN#THE END!"
                FACESTR[2] = 641
                STR[2] = "NOW THAT WE'RE NOT#ON DIFFERENT TEAMS#ANYMORE..."
                FACESTR[3] = 641
                STR[3] = "I GET TO HANG OUT#WITH TAVISH ALL THE#TIME!"
                FACESTR[4] = 641
                STR[4] = "AND WE DON'T HAVE#TO WORRY ABOUT#GETTING CAUGHT!"
                FACESTR[5] = 646
                STR[5] = "I DO MISS THE#FIGHTING THOUGH."
                FACESTR[6] = 641
                STR[6] = "AND ALSO TRYING TO#STOP YOU FROM#INTRUDING."
                FACESTR[7] = 641
                STR[7] = "OH, ALMOST FORGOT!"
                FACESTR[8] = 641
                STR[8] = "THE POLICE ARE#AFTER US NOW!"
                FACESTR[9] = 641
                STR[9] = "BECAUSE WE WERE#MERCENARIES AND#DESTROYED SO MUCH."
                FACESTR[10] = 643
                STR[10] = "APPARENTLY THAT'S#A WAR CRIME#NOWADAYS."
                FACESTR[11] = 643
                STR[11] = "THIS COUNTRY IS#GOING DOWNHILL!"
                FACESTR[12] = 645
                STR[12] = "ANYWAY, TURNS OUT#THE MANN BROTHERS#ALWAYS MADE SURE"
                FACESTR[13] = 645
                STR[13] = "EVERYTHING WE DID#STAYED A SECRET."
                FACESTR[14] = 645
                STR[14] = "SO THAT WE DIDN'T#GO TO JAIL."
                FACESTR[15] = 646
                STR[15] = "WELL...#THEY ARE NOT#HERE ANYMORE."
                FACESTR[16] = 646
                STR[16] = "BUT, THAT'S OKAY!#DELL SAID HE CAN#TAKE CARE OF IT!"
                FACESTR[17] = 646
                STR[17] = "THEY'RE NOT REALLY#GOING TO HANG US,#ARE THEY?"
                FACESTR[18] = 646
                STR[18] = "HEHEHE..."
                FACESTR[19] = 645
                STR[19] = "TAVISH IS ALSO#VERY MAD LATELY."
                FACESTR[20] = 646
                STR[20] = "BECAUSE SOMEONE#KILLED HIS BIG#FRIEND FROM RED."
                FACESTR[21] = 646
                STR[21] = "HE SAID HE WAS#GOING TO AVENGE#HIM."
                FACESTR[22] = 643
                STR[22] = "I REALLY HOPE THEY#GET THE GUY WHO#DID IT."
                FACESTR[23] = 643
                STR[23] = "NO ONE DESERVES#TO LOSE THEIR#FRIEND LIKE THAT."
                FACESTR[24] = 644
                STR[24] = "WHO KNOWS, MAYBE#I AM EVEN GOING#TO HELP HIM OUT!"
                FACESTR[25] = 641
                STR[25] = "AFTER ALL, THAT'S#WHAT FRIENDS ARE#FOR, RIGHT?"
                FACESTR[26] = 645
                STR[26] = "WELL..."
                FACESTR[27] = 645
                STR[27] = "I'D ASK HIM TO SAY#SOMETHING ON THE#PHONE TO YOU..."
                FACESTR[28] = 646
                STR[28] = "BUT TO BE HONEST,#HE'S BEEN RANTING#A LOT ABOUT YOU."
                FACESTR[29] = 645
                STR[29] = "CALLING YOU A#PSYCHOPATH."
                FACESTR[30] = 643
                STR[30] = "THAT'S NONSENSE!"
                FACESTR[31] = 643
                STR[31] = "THE MILITARY TOLD#ME I WAS ONE TOO!"
                FACESTR[32] = 643
                STR[32] = "BUT YOU AND I ARE#NOTHING ALIKE."
                FACESTR[33] = 643
                STR[33] = "SO YOU CAN'T BE#ONE!"
            }
        }
    }
    if (progress == 6 && (!instance_exists(obj_text_box)))
    {
        progress = 7
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            textvoice = 99
            FACESTR[0] = 653
            STR[0] = "* Oi, ye numb nut!#* What're ye sweatin'#  about?"
            FACESTR[1] = 654
            STR[1] = "* Are ye thinking about#  losing to me in a#  drinking contest?"
        }
    }
    if (progress == 7 && (!instance_exists(obj_text_box)))
    {
        progress = 8
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 1
            textvoice = 86
            FACESTR[0] = 643
            STR[0] = "MY NUT IS VERY MUCH#NOT NUMB, TAVISH!#AND I'M NOT SCARED!"
            FACESTR[1] = 643
            STR[1] = "I AM JUST ON THE#PHONE!"
        }
    }
    if (progress == 8 && (!instance_exists(obj_text_box)))
    {
        progress = 9
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            FACESTR[0] = 654
            STR[0] = "* Ohhh, with Miss wee#  goodie-shoes?"
        }
    }
    if (progress == 9 && (!instance_exists(obj_text_box)))
    {
        progress = 10
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 0
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "YES!#DO YOU WANT TO#LEAVE A MESSAGE?"
        }
    }
    if (progress == 10 && (!instance_exists(obj_text_box)))
    {
        progress = 11
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 1
            textvoice = 99
            FACESTR[0] = 656
            STR[0] = "* Wha' kinda question#  is tha'?"
            FACESTR[1] = 655
            STR[1] = "* Of course I do!"
        }
    }
    if (progress == 11 && (!instance_exists(obj_text_box)))
    {
        progress = 12
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 0
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "OKAY!#KNOCK YOURSELF#OUT!"
        }
    }
    if (progress == 12 && (!instance_exists(obj_text_box)))
    {
        progress = 13
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 20
            textvoice = 99
            FACESTR[0] = 655
            STR[0] = "* Nah, I'll drink later.#* I jus' wanna talk to#  her now!"
            FACESTR[1] = 653
            STR[1] = "* Hey!#* Good to hear from ye#  again!"
            FACESTR[2] = 655
            STR[2] = "* I missed ye! We all do!"
            FACESTR[3] = 663
            STR[3] = "* So, uh...#* About that job..."
            FACESTR[4] = 663
            STR[4] = "* I dunno how long it's#  been, but ye haven't#  really..."
            FACESTR[5] = 662
            STR[5] = "* Ya know, given me#  sumthin' to do yet..."
            FACESTR[6] = 663
            STR[6] = "* I'm gettin' kinda#  nervous 'ere."
            FACESTR[7] = 658
            STR[7] = "* I really need tha'#  job, ye know?"
            FACESTR[8] = 658
            STR[8] = "* After ye killed me#  boss, me mum hasn't#  stopped nagging me..."
            FACESTR[9] = 660
            STR[9] = "* " + "\"" + "Get a job, Tavish!" + "\""
            FACESTR[10] = 658
            STR[10] = "* I really do need the#  money, too..."
            FACESTR[11] = 662
            STR[11] = "* I'm beginnin' to#  wonder if the contracts#  were actually real."
            FACESTR[12] = 658
            STR[12] = "* Ye didn't just hire#  people to save yer#  own butt, did ye?"
            FACESTR[13] = 655
            STR[13] = "* Ach, no, ya just must#  'ave forgotten."
            FACESTR[14] = 653
            STR[14] = "* Well...just call Dell#  if ye have sumthin' for#  me and the others."
            FACESTR[15] = 653
            STR[15] = "* Tha's all fer now."
            FACESTR[16] = 658
            STR[16] = "* Oh, yeah...that#  whole killin' Misha#  thing?"
            FACESTR[17] = 663
            STR[17] = "* It's...all water under#  the bridge, okay?"
            FACESTR[18] = 658
            STR[18] = "* I dun even miss him#  tha' much..."
            FACESTR[19] = 662
            STR[19] = "* ..."
            FACESTR[20] = 653
            STR[20] = "* Oh, sorry. I think#  Dell wants the phone#  back."
        }
    }
    if (progress == 13 && (!instance_exists(obj_text_box)))
    {
        progress = 14
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 2
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* yeah, the batterys#  runnin low."
            FACESTR[1] = 636
            STR[1] = "* and i am sure you got#  better things to do#  anway."
            FACESTR[2] = 637
            STR[2] = "* this is it then.#* farewell, pardner."
        }
    }
    if (progress == 14 && (!instance_exists(obj_text_box)))
    {
        progress = 15
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 0
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "GOODBYE!"
        }
    }
    if (progress == 15 && (!instance_exists(obj_text_box)))
    {
        progress = 20
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 0
            textvoice = 99
            FACESTR[0] = 653
            STR[0] = "* See ye after, luv."
        }
    }
    if (progress == 17 && (!instance_exists(obj_text_box)))
    {
        progress = 18
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 5
            textvoice = 86
            FACESTR[0] = 645
            STR[0] = "HUH."
            FACESTR[1] = 641
            STR[1] = "I THINK THAT'S#ALL I WANTED TO#SAY."
            FACESTR[2] = 641
            STR[2] = "AND DELL LOOKS#LIKE HE WANTS#SOMETHING."
            FACESTR[3] = 643
            STR[3] = "WHAT IS IT?#I DON'T HAVE ANY#TREATS!"
            FACESTR[4] = 643
            STR[4] = "LIEUTENANT BITES#ATE THEM ALL."
            FACESTR[5] = 645
            STR[5] = "OH, THE PHONE."
        }
    }
    if (progress == 18 && (!instance_exists(obj_text_box)))
    {
        progress = 19
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 5
            MAXSTR = 2
            textvoice = 85
            FACESTR[0] = 634
            STR[0] = "* yeah, the batterys#  runnin low."
            FACESTR[1] = 636
            STR[1] = "* and i am sure shes#  too busy anyway."
            FACESTR[2] = 637
            STR[2] = "* welp.#* goodbye."
        }
    }
    if (progress == 19 && (!instance_exists(obj_text_box)))
    {
        progress = 20
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 0
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "GOODBYE!"
        }
    }
}
if (nodell == 1)
{
    if (progress == 1 && (!instance_exists(obj_text_box)))
    {
        if (!instance_exists(obj_music_player))
        {
            with (instance_create(0, 0, obj_music_player))
                musictrack = 190
        }
        progress = 20
        if (global.scoutkilled == 1)
        {
            with (instance_create(x, y, obj_text_box))
            {
                MAXSTR = 21
                textvoice = 104
                FACESTR[0] = 667
                STR[0] = "* ..."
                FACESTR[1] = 667
                STR[1] = "* Hello."
                FACESTR[2] = 675
                STR[2] = "* Everyone's dead.#* The Mann brothers.#* Misha. Tavish. Scott."
                FACESTR[3] = 676
                STR[3] = "* And that's not even#  all of them."
                FACESTR[4] = 676
                STR[4] = "* I am out of a job now.#* I have no one to#  experiment on."
                FACESTR[5] = 677
                STR[5] = "* I don't really know#  what to do."
                FACESTR[6] = 667
                STR[6] = "* Well, that's not#  quite true."
                FACESTR[7] = 664
                STR[7] = "* You see..."
                FACESTR[8] = 664
                STR[8] = "* Those people I worked#  with and experimented#  on..."
                FACESTR[9] = 678
                STR[9] = "* They were more than#  that."
                FACESTR[10] = 664
                STR[10] = "* Tavish wasn't just a#  drunken fool."
                FACESTR[11] = 664
                STR[11] = "* His style of fighting#  made sure I was never#  out of spare organs."
                FACESTR[12] = 664
                STR[12] = "* The same goes for#  Misha."
                FACESTR[13] = 678
                STR[13] = "* Without him, I#  couldn't have built#  any of my machines."
                FACESTR[14] = 664
                STR[14] = "* And even Scott...#* Yes, he was annoying."
                FACESTR[15] = 664
                STR[15] = "* I still think he#  deserved to be put in#  that Dispenser."
                FACESTR[16] = 675
                STR[16] = "* But he was a friend.#* All of them were.#* And I miss them."
                FACESTR[17] = 665
                STR[17] = "* So I know what to do.#* Oh, yes."
                FACESTR[18] = 664
                STR[18] = "* I am going to find you."
                FACESTR[19] = 674
                STR[19] = "* Then, I am going#  to kill you."
                FACESTR[20] = 674
                STR[20] = "* And it will not be#  over quickly."
                FACESTR[21] = 674
                STR[21] = "* That is a promise.#* See you then."
            }
        }
        else
        {
            with (instance_create(x, y, obj_text_box))
            {
                textvoice = 98
                MAXSTR = 25
                FACESTR[0] = 681
                STR[0] = "* Uh...hey!"
                FACESTR[1] = 682
                STR[1] = "* I was lookin' all over#  for you and found#  Dell."
                FACESTR[2] = 680
                STR[2] = "* Asked him if he knew#  you and he gave me#  your number!"
                FACESTR[3] = 681
                STR[3] = "* So..."
                FACESTR[4] = 680
                STR[4] = "* Long time no see, hm?"
                FACESTR[5] = 682
                STR[5] = "* It's really lonely#  here now."
                FACESTR[6] = 681
                STR[6] = "* Because the Mann#  brothers are dead,#  everyone has left."
                FACESTR[7] = 681
                STR[7] = "* That, or they're...#  well, dead."
                FACESTR[8] = 680
                STR[8] = "* It's kinda nice here#  now though."
                FACESTR[9] = 680
                STR[9] = "* Cause no one's#  fightin' anymore."
                FACESTR[10] = 681
                STR[10] = "* Well, me not havin'#  a job ain't nice."
                FACESTR[11] = 682
                STR[11] = "* I'll have to move back#  in with mom."
                FACESTR[12] = 684
                STR[12] = "* ..."
                FACESTR[13] = 681
                STR[13] = "* But hey..."
                FACESTR[14] = 680
                STR[14] = "* I'm hoping to see you#  again some day."
                FACESTR[15] = 681
                STR[15] = "* Especially now that#  no one's around#  any longer."
                FACESTR[16] = 680
                STR[16] = "* Maybe you want to meet#  up again too?"
                FACESTR[17] = 682
                STR[17] = "* Considering ya didn't#  kill me, I feel like#  you do..."
                FACESTR[18] = 680
                STR[18] = "* Would be nice to see#  a friendly face again."
                FACESTR[19] = 681
                STR[19] = "* Alright, uh, I gotta#  go."
                FACESTR[20] = 681
                STR[20] = "* This payphone's outta#  cash and I don't have#  any more coins."
                FACESTR[21] = 682
                STR[21] = "* But, like...call back#  or something, okay?"
                FACESTR[22] = 680
                STR[22] = "* You know Dell, right?"
                FACESTR[23] = 680
                STR[23] = "* Just call him and I'm#  sure he'll tell me."
                FACESTR[24] = 681
                STR[24] = "* Okay, really gotta run."
                FACESTR[25] = 680
                STR[25] = "* See ya, pally!"
            }
        }
    }
}
if (progress == 20 && (!instance_exists(obj_text_box)))
{
    if instance_exists(obj_music_player)
    {
        with (obj_music_player)
            instance_destroy()
    }
    progress = 21
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 21)
{
    progress = 22
    alarm[1] = 180
}

