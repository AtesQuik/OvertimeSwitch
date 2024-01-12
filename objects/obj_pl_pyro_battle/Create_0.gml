gunalpha = 1
ishurt = 0
shooting = 0
akimbo = 0
akimboshooting = 0
progress = 0
akimboprogress = 0
shootprogress = 0
akimboshootprogress = 0
finalattack = 0
DMG = 1
pyroisdead = 0
alarmupordown = 0
alarmstart = 0
alarmalpha = 0
balloonicolor = 16777215
whitenoise = 0
flamewave = 0
flamewavescl = 0
if (global.pyrodark == 0)
    blackness = 0
else
    blackness = 1
progress = 0
lidlength = 0
headbob = 0
headupdown = 0
image_speed = 0
eye1 = irandom_range(0, 15)
eye1xshake = 0
eye1yshake = 0
eye2 = irandom_range(30, 45)
eye2xshake = 0
eye2yshake = 0
if (!instance_exists(obj_pl_evade_soul))
    instance_create(320, 120, obj_pl_evade_soul)
if (!instance_exists(obj_pl_pyro_barrier))
    instance_create(0, 0, obj_pl_pyro_barrier)
if (!instance_exists(obj_pl_hpandgun))
    instance_create(0, 0, obj_pl_hpandgun)
countdown = 9999
if (global.pyroprogress == 3)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 173
    countdown = 1800
}
if (global.pyroprogress == 4)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 174
    countdown = 1800
}
if (global.pyroprogress == 5)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 173
    countdown = 1800
}
if (global.pyroprogress == 6)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 174
    countdown = 1680
}
if (global.pyroprogress == 7)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 173
    countdown = 1800
}
if (global.pyroprogress == 8)
{
    with (instance_create(0, 0, obj_music_player))
        musictrack = 174
    countdown = 1680
}
if (global.pyroprogress == 9)
{
    countdown = 60
    akimbo = 1
    with (instance_create(0, 0, obj_music_player))
        musictrack = 184
    alarm[8] = 2415
    alarm[9] = 300
    with (instance_create(0, 0, obj_pl_text_box))
    {
        dontplay = 1
        MAXSTR = 0
        STR[0] = "* The Balloonicorns#  are rebelling!"
    }
}

