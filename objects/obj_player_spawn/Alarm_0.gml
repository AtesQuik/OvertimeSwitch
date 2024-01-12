global.savedminute = global.playminute
global.savedsecond = global.playsecond
global.savedroom = global.roomname
global.savedplayer = global.playername
global.savedlevel = global.playerlevel
global.playerxpos = x
global.playerypos = y
instance_create(x, y, obj_protagonist)
script_execute(scr_save_game)
instance_destroy()

