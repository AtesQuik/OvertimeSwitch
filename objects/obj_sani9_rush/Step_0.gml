if (x < (obj_pro_stopped.x + 32))
    x += 4
else if (process == 0)
{
    sprite_index = spr_sani_stand
    image_speed = 0
    image_index = 3
    process = 1
    if (global.hospitalgotstopped == 0)
    {
        instance_create(x, y, obj_text_box)
        with (obj_text_box)
        {
            MAXSTR = 1
            textvoice = 82
            FACESTR[0] = 622
            STR[0] = "* No, no! You're still#  too weak to leave the#  hospital!"
            FACESTR[1] = 622
            STR[1] = "* You can't go yet!#* Go back to the main#  hall, please."
            global.hospitalgotstopped = 1
        }
    }
}
if (process == 1 && (!instance_exists(obj_text_box)))
{
    instance_create(x, y, obj_sani10_wait)
    instance_destroy()
}

