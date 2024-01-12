if instance_exists(obj_protagonist)
{
    if (obj_protagonist.y < (y + 40))
        depth = (obj_protagonist.depth - 1)
    else
        depth = 2
}
if (global.kritzgone == 0)
{
    sprite_index = spr_kritzkrieg
    mask_index = spr_kritz_mask1
}
else if (global.kritzgone == 1)
{
    sprite_index = spr_kritz_gone
    mask_index = spr_kritz_mask2
}

