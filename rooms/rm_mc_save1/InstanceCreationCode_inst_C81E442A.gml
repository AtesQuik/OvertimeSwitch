if (global.manncovariables == 0)
{
    global.manncovariables = 1
    global.enemiesleft = 16
    global.enemiestokill = 16
    script_execute(scr_battlevariables)
    script_execute(scr_random_encounter_variables)
    global.enemyamount = 0
}
