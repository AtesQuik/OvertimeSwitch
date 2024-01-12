if (global.mcprogress > 1)
{
    instance_destroy()
    if (global.mcprogress < 3 && global.scoutkilled == 0)
        instance_create(x, y, obj_mc_scout1)
    if (global.mcprogress > 2 && global.scoutkilled == 0 && global.mcover == 0 && global.scoutgenoquit == 0)
        instance_create(x, y, obj_mc_scout2)
    if (global.scoutkilled == 1)
        instance_create(x, y, obj_mc_dispenser_dead)
}
image_speed = 0
progress = 0
turnprogress = 0
animation = 0

