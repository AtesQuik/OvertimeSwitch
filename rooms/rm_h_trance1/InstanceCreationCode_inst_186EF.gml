if (global.hospitalvariables == 0)
{
    global.hospitalvariables = 1
    global.enemiesleft = 14
    global.enemiestokill = 14
    script_execute(scr_battlevariables)
    script_execute(scr_random_encounter_variables)
    global.enemyamount = 0
}
