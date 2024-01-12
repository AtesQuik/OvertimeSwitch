if (global.minevariables == 0)
{
    global.minevariables = 1
    global.enemiesleft = 18
    global.enemiestokill = 18
    script_execute(scr_battlevariables)
    script_execute(scr_random_encounter_variables)
    global.enemyamount = 0
}
