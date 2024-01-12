if (!instance_exists(obj_room_fade_out))
{
    with (obj_music_player)
        instance_destroy()
    with (obj_protagonist)
    {
        instance_create(x, y, obj_pro_stopped)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        global.playerdirection = obj_protagonist.prodirection
        global.playerxpos = x
        global.playerypos = y
        instance_create(x, y, obj_fake_soul_battlestart)
        instance_destroy()
    }
    global.previousroom = room
    with (obj_menu)
        instance_destroy()
    with (obj_textbox_item)
        instance_destroy()
    with (obj_text_box)
        instance_destroy()
}
