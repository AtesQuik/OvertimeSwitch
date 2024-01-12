if (progress == 1 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 2
    alarm[1] = 300
}
if (progress == 3 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 4
    alarm[2] = 240
}
if (progress == 5 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 6
    alarm[3] = 270
}
if (progress == 7 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 8
    alarm[4] = 270
    alarm[9] = 180
}
if (progress == 9 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 10
    alarm[5] = 120
}
if (progress == 11 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 12
    alarm[6] = 30
}
if (progress == 13 && (!instance_exists(obj_speech_bubble_noevade)))
{
    progress = 14
    alarm[8] = 30
}
if instance_exists(obj_dell_battle)
{
    with (obj_dell_battle)
    {
        if instance_exists(obj_speech_bubble_noevade)
        {
            if (obj_dell_phasethree.progress == 1)
            {
                if (obj_speech_bubble_noevade.N == 0)
                    heads = 2
                if (obj_speech_bubble_noevade.N == 2)
                    heads = 9
                if (obj_speech_bubble_noevade.N == 3)
                    heads = 10
                if (obj_speech_bubble_noevade.N == 4)
                    heads = 9
                if (obj_speech_bubble_noevade.N == 5)
                    heads = 0
            }
            if (obj_dell_phasethree.progress == 3)
            {
                if (obj_speech_bubble_noevade.N == 1)
                {
                    heads = 3
                    torso = 1
                }
                if (obj_speech_bubble_noevade.N == 2)
                {
                    heads = 0
                    torso = 0
                }
                if (obj_speech_bubble_noevade.N == 3)
                    heads = 1
                if (obj_speech_bubble_noevade.N == 4)
                    heads = 7
                if (obj_speech_bubble_noevade.N == 5)
                    heads = 3
                if (obj_speech_bubble_noevade.N == 6)
                    heads = 0
            }
            if (obj_dell_phasethree.progress == 5)
            {
                if (obj_speech_bubble_noevade.N == 1)
                    heads = 1
                if (obj_speech_bubble_noevade.N == 2)
                    heads = 0
            }
            if (obj_dell_phasethree.progress == 7)
            {
                if (obj_speech_bubble_noevade.N == 0)
                    heads = 5
                if (obj_speech_bubble_noevade.N == 1)
                    heads = 6
                if (obj_speech_bubble_noevade.N == 2)
                    heads = 0
            }
            if (obj_dell_phasethree.progress == 9)
            {
                if (obj_speech_bubble_noevade.N == 0)
                    heads = 9
                if (obj_speech_bubble_noevade.N == 2)
                    heads = 10
                if (obj_speech_bubble_noevade.N == 3)
                    heads = 9
            }
            if (obj_dell_phasethree.progress == 11)
            {
                if (obj_speech_bubble_noevade.N == 0)
                    heads = 10
                if (obj_speech_bubble_noevade.N == 1)
                    heads = 9
            }
            if (obj_dell_phasethree.progress == 13)
            {
                if (obj_speech_bubble_noevade.N == 2)
                    heads = 10
                if (obj_speech_bubble_noevade.N == 3)
                    heads = 5
                if (obj_speech_bubble_noevade.N == 4)
                    heads = 5
                if (obj_speech_bubble_noevade.N == 5)
                    heads = 7
                if (obj_speech_bubble_noevade.N == 6)
                    heads = 8
                if (obj_speech_bubble_noevade.N == 7)
                    heads = 9
                if (obj_speech_bubble_noevade.N == 8)
                    heads = 10
            }
        }
    }
}

