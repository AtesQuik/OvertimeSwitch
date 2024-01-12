instance_create(0, 0, obj_controller)
if (global.completedneutral == 1 && global.pacifistenabled == 0)
    instance_create(x, y, obj_i_ballooney)
else
{
    instance_create(0, 0, obj_intro)
    if (global.pyroprogress < 2)
    {
        with (instance_create(x, y, obj_music_player))
        {
            global.musictitle = 171
            musictrack = 171
        }
    }
}
instance_destroy()

