if (global.thundermountainvariables == 0)
{
    global.thundermountainvariables = 1
    global.enemiesleft = 16
    global.enemiestokill = 16
    script_execute(scr_battlevariables)
    script_execute(scr_random_encounter_variables)
    global.enemyamount = 0
}
