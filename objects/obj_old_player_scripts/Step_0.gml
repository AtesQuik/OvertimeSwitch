if (keyboard_check(vk_down) && place_free(x, (y + spd)))
{
    y += spd
    sprite_index = spr_pro_down
    image_speed = 0.25
    moving = 1
    prodirection = 0
}
if (keyboard_check(vk_right) && place_free((x + spd), y))
{
    x += spd
    sprite_index = spr_pro_right
    image_speed = 0.25
    moving = 1
    prodirection = 1
}
if (keyboard_check(vk_up) && place_free(x, (y - spd)))
{
    y -= spd
    sprite_index = spr_pro_up
    image_speed = 0.25
    moving = 1
    prodirection = 2
}
if (keyboard_check(vk_left) && place_free((x - spd), y))
{
    x -= spd
    sprite_index = spr_pro_left
    image_speed = 0.25
    moving = 1
    prodirection = 3
}
if (keyboard_check_released(vk_up) || keyboard_check_released(vk_right) || keyboard_check_released(vk_down) || keyboard_check_released(vk_left))
{
    moving = 0
    sprite_index = spr_pro_stand
    image_speed = 0
    image_index = prodirection
}
if (keyboard_check(vk_down) && (!(place_meeting(x, (y + spd), obj_solid))))
{
    y += spd
    sprite_index = spr_pro_down
    image_speed = 0.25
    moving = 1
    prodirection = 0
}
if (keyboard_check(vk_right) && (!(place_meeting((x + spd), y, obj_solid))))
{
    x += spd
    sprite_index = spr_pro_right
    image_speed = 0.25
    moving = 1
    prodirection = 1
}
if (keyboard_check(vk_up) && (!(place_meeting(x, (y - spd), obj_solid))))
{
    y -= spd
    sprite_index = spr_pro_up
    image_speed = 0.25
    moving = 1
    prodirection = 2
}
if (keyboard_check(vk_left) && (!(place_meeting((x - spd), y, obj_solid))))
{
    x -= spd
    sprite_index = spr_pro_left
    image_speed = 0.25
    moving = 1
    prodirection = 3
}
if (keyboard_check_released(vk_up) || keyboard_check_released(vk_right) || keyboard_check_released(vk_down) || keyboard_check_released(vk_left))
    moving = 0
if (keyboard_check_released(vk_up) && sprite_index == spr_pro_up)
{
    sprite_index = spr_pro_stand
    image_speed = 0
    image_index = prodirection
}
if (keyboard_check_released(vk_right) && sprite_index == spr_pro_right)
{
    sprite_index = spr_pro_stand
    image_speed = 0
    image_index = prodirection
}
if (keyboard_check_released(vk_down) && sprite_index == spr_pro_down)
{
    sprite_index = spr_pro_stand
    image_speed = 0
    image_index = prodirection
}
if (keyboard_check_released(vk_left) && sprite_index == spr_pro_left)
{
    sprite_index = spr_pro_stand
    image_speed = 0
    image_index = prodirection
}

