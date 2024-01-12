if (global.genocide == 1)
    musictrack = 212
else if (global.meetingprogress > 1 && global.meetingprogress < 3)
    musictrack = 164
else
    instance_destroy()
