if (global.tmspikes1up == 0 || global.thundermountainprogress > 8 || global.thundermountainover == 1)
{
    instance_create(x, y, obj_tm_spikes1_down)
    instance_destroy()
}

