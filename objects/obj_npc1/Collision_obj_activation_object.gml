scr_face_protagonist()
with (obj_activation_object)
    instance_destroy()
if (!instance_exists(obj_text_box))
{
    talkingto = 1
    instance_create(x, y, obj_text_box)
    with (obj_text_box)
    {
        MAXSTR = 8
        STR[0] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[1] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[2] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[3] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[4] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[5] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[6] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[7] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
        STR[8] = "* aaaaaaaaaaaaaaaaaaaaaaaaaaa#  bbbbbbbbbbbbbbbbbbbbbbbbbbb#  ccccccccccccccccccccccccccc"
    }
}
