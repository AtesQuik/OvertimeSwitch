if keyboard_check(vk_left)
    x -= 1
if keyboard_check(vk_right)
    x += 1
if keyboard_check(vk_up)
    y -= 1
if keyboard_check(vk_down)
    y += 1
if keyboard_check_pressed(vk_f1)
    image_xscale += 0.05
if keyboard_check_pressed(vk_f2)
    image_xscale -= 0.05
if keyboard_check_pressed(vk_f3)
    image_yscale += 0.05
if keyboard_check_pressed(vk_f4)
    image_yscale -= 0.05
if keyboard_check_pressed(vk_f5)
    image_angle += 10
if keyboard_check_pressed(vk_f6)
    image_angle -= 10
if keyboard_check_pressed(vk_f10)
{
    oldx = x
    oldy = y
    oldangle = image_angle
    oldxscale = image_xscale
    oldyscale = image_yscale
}

