if (lifthat == 1)
{
    if (image_index < 7)
        image_index += 1
}
if (global.zepheniahprogress == 1 && (!instance_exists(obj_text_box)))
{
    global.zepheniahprogress = 2
    alarm[0] = 30
}
if (global.zepheniahprogress == 3 && (!instance_exists(obj_text_box)))
{
    global.zepheniahprogress = 4
    script_execute(scr_random_encounter)
}

