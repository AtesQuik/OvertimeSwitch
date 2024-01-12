global.roomname = "Dustbowl - Pipeland"
if (global.dbprogress < 2)
    global.dbprogress = 2
if (global.dbover == 0)
    global.encountersdisabled = 0
else if (global.dbover == 1)
    global.encountersdisabled = 1
global.battleroom = choose(124, 122, 123)
