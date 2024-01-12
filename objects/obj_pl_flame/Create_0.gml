image_xscale = 0.1
image_yscale = 0.1
image_speed = 0.5
damagedone = 1
progress = 0
if (x > 320)
{
    flamedir = 0
    image_angle = 45
}
else
{
    flamedir = 1
    image_angle = -45
}
action_set_alarm(120, 1)

