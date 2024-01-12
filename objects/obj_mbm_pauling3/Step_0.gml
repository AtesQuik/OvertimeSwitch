if (progress == 1 && (!instance_exists(obj_text_box)))
{
    progress = 2
    alarm[0] = 60
    global.battleroom = 173
}
if (progress == 3)
{
    progress = 4
    if (global.playername == "Jacket")
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 14
            STR[0] = "* Was it worth it?"
            STR[1] = "* It all ends the same way#  anyway."
            STR[2] = "* But I suppose it's more#  about the journey anyway,#  isn't it?"
            STR[3] = "* At least you can now say#  that you achieved this."
            STR[4] = "* Unless you haven't, of#  course."
            STR[5] = "* But where's the fun in#  that?"
            STR[6] = "* Just for curiousity's#  sake?"
            STR[7] = "* Look where your curiousity#  led you."
            STR[8] = "* I hope you're satisfied."
            STR[9] = "* Because now it'll all end."
            STR[10] = "* I'd say farewell..."
            STR[11] = "* But we'll meet again#  anyway."
            STR[12] = "* In fact, one might say#  very soon."
            STR[13] = "* Depending on your point#  of view, that is."
            STR[14] = "* We're done here."
        }
    }
    else
    {
        with (instance_create(x, y, obj_text_box))
        {
            MAXSTR = 36
            STR[0] = "* See, when I first woke up#  after my crash, I was#  scared."
            STR[1] = "* I didn't know where I was.#* I couldn't move my body.#* What happened?"
            STR[2] = "* I should have been dead."
            STR[3] = "* But then, something#  happened."
            STR[4] = "* My limbs dragged me to#  the light.#* Against my will."
            STR[5] = "* Something was controlling#  my body."
            STR[6] = "* I was never more scared#  in my entire life."
            STR[7] = "* Then, a floating balloon#  animal tried to kill me."
            STR[8] = "* I didn't know what to do."
            STR[9] = "* And it hit me."
            STR[10] = "* I didn't have to do#  anything."
            STR[11] = "* For the very first time in#  my entire life, I didn't#  have to do any choices."
            STR[12] = "* My whole life had been#  decision after decision."
            STR[13] = "* But now...I could#  finally lean back."
            STR[14] = "* Let someone else take#  control."
            STR[15] = "* So I started narrating#  everything.#* I had nothing better to do."
            STR[16] = "* I narrated everything my#  body was doing.#* But..."
            STR[17] = "* It wasn't MY body anymore.#* It belonged to YOU now."
            STR[18] = "* Now, I didn't mind the#  decisions you've made#  at first."
            STR[19] = "* But then they became#  more questionable."
            STR[20] = "* You killed innocent#  people."
            STR[21] = "* I'm normally used to#  things like that."
            STR[22] = "* My job requires me to stay#  emotionally detached from#  everyone."
            STR[23] = "* Yet what you did was unlike#  anything I'd ever seen#  before."
            STR[24] = "* Genocide.#* Mindless slaughter."
            STR[25] = "* I wanted out."
            STR[26] = "* Each time you killed#  a giant foe...#* ...I learned about you."
            STR[27] = "* I learned more about your#  behaviour. The way you#  acted."
            STR[28] = "* And with every kill, it#  became more and more clear.#* My LV increased."
            STR[29] = "* My...#* " + "\"" + "LEVELHEADEDNESS" + "\"" + "."
            STR[30] = "* Eventually, I'd figure#  out a way to get rid of#  you, I thought."
            STR[31] = "* And, well, the time has#  come!"
            STR[32] = "* Thanks to that last kill,#  I now know all I need."
            STR[33] = "* Time to remove you from#  my life."
            STR[34] = "* I know I need you to live."
            STR[35] = "* But I also know that you#  need me as well."
            STR[36] = "* And without me, you can't#  time travel anymore.#* You can't reset."
        }
    }
}
if (progress == 4 && (!instance_exists(obj_text_box)))
{
    progress = 5
    with (obj_music_player)
        instance_destroy()
    alarm[2] = 30
}

