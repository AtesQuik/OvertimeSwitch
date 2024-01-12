var __b__;
__b__ = action_if_variable(global.genocide, 0, 0)
if __b__
{
    progress = 5
    sprite_index = spr_dispenser_talk
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 8
        STR[0] = "* I-I-I AM-M THE#  D-D-DISPENSE-O-MATIC 9000."
        STR[1] = "* I D-DISPENSE VARIOUS ITEMS#  OF ALL KINDS.#  KINDS. K-K-K-K-KINDS."
        STR[2] = "* I-I-I CAN ALSO F-FUNCTION#  AS A S-SECURITY MEASURE IF#  I AM REBOOTED. R-REBOOTED."
        STR[3] = "* W-WHICH IS WHAT DR. ELI#  D-DID A-AFTER MY S-S-SONG."
        STR[4] = "* -SCANNING THE ROOM-"
        STR[5] = "* -ALERT! INTRUDER DETECTED-"
        STR[6] = "* Y-YOU ARE T-THE INTRUDER."
        STR[7] = "* P-PREPARE TO BE-E#  E X T E R M I N A T E D."
        STR[8] = "* -INITIATING EXTERMINATION#  PROGRAM-"
    }
}
else
{
    global.battleroom = 154
    progress = 8
    image_speed = 0.1
    sprite_index = spr_dispenser_talk
    with (instance_create(x, y, obj_text_box))
    {
        textvoice = choose(87, 88, 89, 90, 91, 92, 93, 94)
        MAXSTR = 28
        STR[0] = "* HELLO AGAIN, SWEETHEART."
        STR[1] = "* ..."
        STR[2] = "* I..."
        STR[3] = "* I WASN'T QUITE HONEST#  WITH YOU."
        STR[4] = "* WHAT YOU SEE HERE...#* THAT'S NOT ME."
        STR[5] = "* I'M NOT A ROBOT. NEVER#  WERE. I AM ACTUALLY A#  LIVING, HUMAN BEING."
        STR[6] = "* IT'S JUST THAT...#* ELI...HE PUT ME INTO THIS#  DISPENSER. AS PUNISHMENT."
        STR[7] = "* I WAS TOO CLINGY.#* AND WELL, YEAH, I CAN SEE#  THAT NOW TOO."
        STR[8] = "* ..."
        STR[9] = "* WELL..."
        STR[10] = "* HE JUST CAME BY HERE."
        STR[11] = "* BEFORE HE LEFT, HE TOLD#  ME HE'D GET ME OUT OF#  THIS CHAMBER OF TORTURE."
        STR[12] = "* BUT ONLY IF..."
        STR[13] = "* ..."
        STR[14] = "* HEH, IS IT HOT IN HERE?"
        STR[15] = "* ..."
        STR[16] = "* ONLY IF YOU ATTACKED ME,#  SO THAT I COULD KILL YOU."
        STR[17] = "* ..."
        STR[18] = "* ...I ACCEPTED."
        STR[19] = "* BUT NOW, SEEING YOU HERE#  IN THIS PALE LIGHT..."
        STR[20] = "* I JUST CAN'T.#* I CAN'T BRING MYSELF TO#  DO IT."
        STR[21] = "* YEAH, WE DIDN'T TALK MUCH.#* OR, AT ALL, REALLY."
        STR[22] = "* YOU JUST REMINDED ME SO#  MUCH OF MY CHILDHOOD#  SWEETHEART."
        STR[23] = "* HEH...SIMPLER TIMES..."
        STR[24] = "* ..."
        STR[25] = "* IT'S BEEN SO LONG SINCE#  I FELT MY ACTUAL LIMBS."
        STR[26] = "* AND SADLY...I AM A MAN#  OF MY WORDS."
        STR[27] = "* ..."
        STR[28] = "* LET'S JUST DO THIS."
    }
}

