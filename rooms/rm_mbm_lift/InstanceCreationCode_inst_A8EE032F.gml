if (global.mbmvariables == 0)
{
    global.mbmvariables = 1
    script_execute(scr_battlevariables)
    script_execute(scr_random_encounter_variables)
    global.enemyamount = 0
}
