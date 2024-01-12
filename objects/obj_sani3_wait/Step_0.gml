if (progress == 0 && distance_to_object(obj_protagonist) < 32)
{
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
    progress = 1
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 18
        textvoice = 82
        FACESTR[0] = 621
        STR[0] = "* Fantastic, you did it!#* I knew you could!"
        FACESTR[1] = 621
        STR[1] = "* That means your brain#  is still functioning#  properly after"
        FACESTR[2] = 621
        STR[2] = "* everything that has#  happened."
        FACESTR[3] = 620
        STR[3] = "* Now, I feel like I need#  to explain a couple of#  things."
        FACESTR[4] = 620
        STR[4] = "* Remember your scooter#  that I mentioned#  earlier?"
        FACESTR[5] = 620
        STR[5] = "* Well, it's entirely#  broken. You can't use#  it anymore."
        FACESTR[6] = 622
        STR[6] = "* I'm sorry."
        FACESTR[7] = 620
        STR[7] = "* But!"
        FACESTR[8] = 621
        STR[8] = "* I managed to repair#  your cellphone!"
        FACESTR[9] = 622
        STR[9] = "* Well...not perfectly."
        FACESTR[10] = 620
        STR[10] = "* See, I only managed to#  repair it so that you#  can receive calls, but"
        FACESTR[11] = 620
        STR[11] = "* you can't call anyone#  yourself."
        FACESTR[12] = 626
        STR[12] = "* ..."
        FACESTR[13] = 626
        STR[13] = "* H-hey! Don't look at me#  like that! It was#  easier to progra-"
        FACESTR[14] = 622
        STR[14] = "* I mean..."
        FACESTR[15] = 620
        STR[15] = "* It was the only way to#  repair it."
        FACESTR[16] = 621
        STR[16] = "* Anyway!"
        FACESTR[17] = 620
        STR[17] = "* You can have it back#  now."
        FACESTR[18] = 621
        STR[18] = "* Now, please follow me#  again!"
    }
}
if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 2
        STR[0] = "* You got your cellphone#  back! It's almost as good#  as new."
        STR[1] = "* At least from a certain#  point of view."
        STR[2] = "* Select CELL in the menu#  to NOT use it, because you#  can't call anyone with it."
    }
}
if (progress == 2 && (!instance_exists(obj_text_box)))
{
    x += 2
    sprite_index = spr_sani_right
    image_speed = 0.2
    global.phone = 1
}

