progress = 2
with (instance_create(x, y, obj_music_player))
    musictrack = 144
global.textboxtop = 0
with (instance_create(x, y, obj_text_box))
{
    textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
    if (global.ingredients > 40)
        MAXSTR = 7
    else
        MAXSTR = 4
    STR[0] = "* OH MY!"
    STR[1] = "* WE DID IT, BEAUTIFUL!"
    STR[2] = "* AH, WHAT AM I SAYING HERE.#* OF COURSE IT WAS ALL ME!#* BUT YOU HELPED A LOT."
    if (global.ingredients > 40)
    {
        STR[3] = "* AND LOOK!"
        STR[4] = "* WE WERE ABLE TO MAKE ONE#  WHOLE HOT DOG!"
        STR[5] = "* I WANT YOU TO HAVE IT.#* AS A KEEPSAKE OF OUR#  ADVENTURE."
        STR[6] = "* YOU CAN ALSO EAT IT!"
        STR[7] = "* I'LL JUST PUT IT#  IN THE OVEN."
    }
    else
    {
        STR[3] = "* UNFORTUNATELY, WE WERE#  NOT ABLE TO MAKE A FULL#  HOT DOG."
        STR[4] = "* BUT IT'S MORE ABOUT THE#  JOURNEY THAN THE GOAL,#  ISN'T IT?"
    }
}

