if (global.genocide == 1)
    musictrack = 212
else if (global.thundermountainprogress == 6 || global.thundermountainprogress == 10)
    instance_destroy()
else if (global.thundermountainprogress == 8)
    musictrack = 127
else
    musictrack = 125
