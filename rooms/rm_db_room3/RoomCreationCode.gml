global.roomname = "Test Level"
if (global.dbover == 0 && global.dbprogress > 4)
    global.encountersdisabled = 0
if (global.dbover == 1 || global.dbprogress < 4)
    global.encountersdisabled = 1
global.battleroom = choose(124, 122, 123)
