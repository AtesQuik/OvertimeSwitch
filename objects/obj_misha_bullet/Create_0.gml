spd = 4
if instance_exists(obj_bullet_follow)
{
    audio_play_sound(snd_syringe, 1, false)
    image_angle = point_direction(x, y, obj_bullet_follow.x, obj_bullet_follow.y)
    move_towards_point(obj_bullet_follow.x, obj_bullet_follow.y, 5)
}
else if instance_exists(obj_bullet_follow2)
{
    image_angle = 270
    move_towards_point(x, 250, 6)
}
else if (!instance_exists(obj_danger_zones))
    instance_destroy()
else
    image_angle = 270
damagedone = 0

