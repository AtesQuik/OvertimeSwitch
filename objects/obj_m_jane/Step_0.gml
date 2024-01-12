var __b__;
__b__ = action_if_variable(global.mineprogress, 0, 2)
if __b__
    action_kill_object()
else
{
    if (progress == 0)
    {
        if (x < 270)
            x += 2
        else
        {
            sprite_index = spr_jane_stand
            image_speed = 0
            image_index = 1
            progress = 1
            if instance_exists(obj_m_tavish1)
            {
                with (obj_m_tavish1)
                    image_index = 3
            }
        }
    }
    if (progress == 1)
    {
        progress = 2
        with (instance_create(x, y, obj_text_box))
        {
            fontname = 4
            MAXSTR = 12
            textvoice = 86
            FACESTR[0] = 641
            STR[0] = "HELLO, TAVISH!#HOW ARE YOU DOING?"
            FACESTR[1] = 641
            STR[1] = "ARE YOU STILL#A BOUNTY HUNTER?"
            FACESTR[2] = 646
            STR[2] = "...OH. HM."
            FACESTR[3] = 646
            STR[3] = "WHAT?#OH, NO REASON."
            FACESTR[4] = 646
            STR[4] = "DOESN'T BOTHER#ME AT ALL!"
            FACESTR[5] = 646
            STR[5] = "WHAT? HAVE I SEEN A#WOMAN WEARING#GLASSES LATELY?"
            FACESTR[6] = 646
            STR[6] = "OH, TAVISH! YOU KNOW#THAT THERE ARE NO#WOMEN AROUND HERE!"
            FACESTR[7] = 646
            STR[7] = "WELL, ANYWAY!#STILL WANT TO GO#FOR A BEER LATER?"
            FACESTR[8] = 641
            STR[8] = "FANTASTIC!"
            FACESTR[9] = 644
            STR[9] = "THIS TIME, YOU WON'T#DRINK ME UNDER#THE TABLE!"
            FACESTR[10] = 642
            STR[10] = "BECAUSE I WILL JUST#SIT UNDER IT FROM#THE BEGINNING!"
            FACESTR[11] = 641
            STR[11] = "ALSO, REMEMBER TO#KEEP THIS FRIENDSHIP#A SECRET!"
            FACESTR[12] = 641
            STR[12] = "GOODBYE!"
        }
    }
    if (progress == 2 && (!instance_exists(obj_text_box)))
    {
        if (x > 160)
        {
            x -= 2
            sprite_index = spr_jane_left
            image_speed = 0.2
        }
        else
            instance_destroy()
    }
}

