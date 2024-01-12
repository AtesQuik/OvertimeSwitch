if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    if (global.genocide == 0)
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 8
            dontplay = 1
            STR[0] = "* Oh, look at these two."
            STR[1] = "* How much they wish to#  destroy one another."
            STR[2] = "* How much they wish to#  control one another."
            STR[3] = "* How much they both wish#  to be free."
            STR[4] = "* Can you see?"
            STR[5] = "* Can you see how much#  they need one another?"
            STR[6] = "* No, perhaps not."
            STR[7] = "* Sometimes these things#  cannot be seen."
            STR[8] = "* Can you save them?"
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 11
            textvoice = 83
            FACESTR[0] = 631
            STR[0] = "* Right, so this thing#  still works."
            FACESTR[1] = 628
            STR[1] = "* Even after I beat three#  guys up with it."
            FACESTR[2] = 631
            STR[2] = "* Missie, I have no idea#  what your plan was #  this entire time."
            FACESTR[3] = 631
            STR[3] = "* But if it was to#  **** me off..."
            FACESTR[4] = 632
            STR[4] = "* THEN IT'S BLOODY#  ****ING WORKING, YE#  ****!"
            FACESTR[5] = 629
            STR[5] = "* Wait, there's EVEN#  MORE COMING?!?"
            FACESTR[6] = 629
            STR[6] = "* Do ye get pleasure#  out of this or#  somethin'?"
            FACESTR[7] = 632
            STR[7] = "* Just how can one#  single person kill#  that many people?!"
            FACESTR[8] = 629
            STR[8] = "* Ye're starting to#  bloody scare me now..."
            FACESTR[9] = 628
            STR[9] = "* Ugh, now this phone#  is giving up too."
            FACESTR[10] = 631
            STR[10] = "* Ye know what?#* I'm comin' over there."
            FACESTR[11] = 631
            STR[11] = "* See you in a second."
        }
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    progress = 3
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 0
        STR[0] = "* Click..."
    }
}
if (progress == 3 && (!instance_exists(obj_text_box)))
{
    instance_destroy()
    global.mbmcallprogress = 7
    with (obj_pro_stopped)
        instance_destroy()
}

