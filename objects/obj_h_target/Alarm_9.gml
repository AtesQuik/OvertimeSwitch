with (obj_sani12_surgery)
    npcdirection = 1
instance_create(0, 0, obj_music_player)
with (obj_music_player)
    musictrack = 119
instance_create(x, y, obj_text_box)
with (obj_text_box)
{
    MAXSTR = 11
    textvoice = 82
    FACESTR[0] = 621
    STR[0] = "* It worked!#* Don't you feel so much#  better?"
    FACESTR[1] = 620
    STR[1] = "* Oh, you're confused#  again, aren't you?"
    FACESTR[2] = 621
    STR[2] = "* This is what I call a#  MEDI GUN!"
    FACESTR[3] = 620
    STR[3] = "* I could go into boring#  details and explain#  how it works, but"
    FACESTR[4] = 620
    STR[4] = "* I don't think I have#  the time...all you#  need to know is that it"
    FACESTR[5] = 620
    STR[5] = "* repairs every single#  cell in your body,#  reversing any injury!"
    FACESTR[6] = 621
    STR[6] = "* It actually, literally,#  flawlessly,#  heals you!"
    FACESTR[7] = 621
    STR[7] = "* It's a medical#  breakthrough, and I am#  so proud of myself"
    FACESTR[8] = 621
    STR[8] = "* for inventing it!#* So if you ever feel#  unhealthy, just come to"
    FACESTR[9] = 621
    STR[9] = "* me, and I will heal you#  immediately!"
    FACESTR[10] = 620
    STR[10] = "* Now, is there anything#  else I can do for you?"
    FACESTR[11] = 621
    STR[11] = "* Anything at all?#              When can#  Nothing     I leave?"
    choices = 1
}
global.hospitalprogress = 23
instance_destroy()

