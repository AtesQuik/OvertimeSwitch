if (global.genocide == 1)
    musictrack = 212
else if (global.meetingprogress < 4)
    musictrack = 160
else
    instance_destroy()
