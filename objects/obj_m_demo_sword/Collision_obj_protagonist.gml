instance_destroy()
with (obj_m_demo_sword)
    instance_destroy()
if (!instance_exists(obj_fake_soul_battlestart))
{
    with (obj_protagonist)
    {
        global.playerxpos = x
        global.playerypos = y
        global.playerdirection = prodirection
        instance_create(x, y, obj_pro_stopped)
        instance_create(x, y, obj_fake_soul_battlestart)
        obj_pro_stopped.image_index = obj_protagonist.prodirection
        instance_destroy()
    }
}
