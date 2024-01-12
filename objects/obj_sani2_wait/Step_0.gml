if (progress == 0 && distance_to_object(obj_protagonist) < 64)
{
    with (obj_protagonist)
    {
        instance_destroy()
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = 2
    }
    progress = 1
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 8
        textvoice = 82
        FACESTR[0] = 621
        STR[0] = "* Hello again!#* Are you still well?"
        FACESTR[1] = 621
        STR[1] = "* Gut, I am glad."
        FACESTR[2] = 620
        STR[2] = "* Now, please listen#  very closely!"
        FACESTR[3] = 620
        STR[3] = "* You will see some traps#  on the ground."
        FACESTR[4] = 620
        STR[4] = "* They're leftovers from#  the old security system#  of this hospital."
        FACESTR[5] = 622
        STR[5] = "* Do not step on them,#  or you might hurt#  yourself!"
        FACESTR[6] = 620
        STR[6] = "* Instead, try to find a#  way to deactivate them!"
        FACESTR[7] = 620
        STR[7] = "* I will wait up ahead#  for you to figure out#  the solution."
        FACESTR[8] = 621
        STR[8] = "* Good luck!"
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    y -= 2
    image_speed = 0.2
    sprite_index = spr_sani_up
    if (distance_to_object(obj_pro_stopped) > 220)
    {
        instance_destroy()
        global.hospitalprogress = 2
    }
}

