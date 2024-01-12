with (obj_music_player)
    instance_destroy()
instance_create(x, y, obj_text_box)
with (obj_text_box)
{
    MAXSTR = 0
    textvoice = 82
    FACESTR[0] = 620
    STR[0] = "* Now just hold still...#* It will not hurt, I#  promise."
}
global.hospitalprogress = 22

