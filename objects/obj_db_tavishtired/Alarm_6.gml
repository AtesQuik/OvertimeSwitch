progress = 5
if (global.enemieskilled == 0)
{
    global.tavishhired = 1
    global.enemiesspared += 1
    with (instance_create(x, y, obj_text_box))
    {
        MAXSTR = 24
        textvoice = 99
        FACESTR[0] = 662
        STR[0] = "* Did...did ye give me#  that beer just now?"
        FACESTR[1] = 658
        STR[1] = "* Ya didn't have to do#  tha'...I was completely#  vulnerable..."
        FACESTR[2] = 663
        STR[2] = "* Oh, no...#* I can't do this..."
        FACESTR[3] = 658
        STR[3] = "* Yer wanted poster says#  you need to be dead#  if I want the bounty..."
        FACESTR[4] = 662
        STR[4] = "* But I just can't#  kill someone who just#  saved me life!"
        FACESTR[5] = 662
        STR[5] = "* Ach, this is bad..."
        FACESTR[6] = 662
        STR[6] = "* Ye're the only one#  around here that's#  even wanted!"
        FACESTR[7] = 663
        STR[7] = "* Well, seems like this#  is where me career as#  a bounty hunter ends."
        FACESTR[8] = 663
        STR[8] = "* Oh?#* Ya...#* Ya want to hire me?"
        FACESTR[9] = 654
        STR[9] = "* Ach, luv!#* This is brilliant!"
        FACESTR[10] = 655
        STR[10] = "* Why did I say I didn't#  want to be hired#  earlier?"
        FACESTR[11] = 661
        STR[11] = "* Thanks, mate!#* Me mum will be so proud#  of me now!"
        FACESTR[12] = 653
        STR[12] = "* Well, not really."
        FACESTR[13] = 658
        STR[13] = "* But wait...ye're still#  going to murder#  Redmond, aren't ya?"
        FACESTR[14] = 653
        STR[14] = "* Well, normally I'd be#  worried about losing#  yet another job, but"
        FACESTR[15] = 653
        STR[15] = "* I know that ye will#  not get past Misha."
        FACESTR[16] = 653
        STR[16] = "* So if ye're smart,#  then ye won't even#  bother fighting him."
        FACESTR[17] = 654
        STR[17] = "* It's better that way#  for everyone involved!"
        FACESTR[18] = 661
        STR[18] = "* Plus, if ye're dead,#  ye can't really pay me,#  can ye?"
        FACESTR[19] = 653
        STR[19] = "* Anyway luv, I think#  I will give Jane a#  visit."
        FACESTR[20] = 653
        STR[20] = "* Did ya meet him yet?"
        FACESTR[21] = 655
        STR[21] = "* He seems pretty crazy,#  but he has a heart of#  gold."
        FACESTR[22] = 661
        STR[22] = "* AND A HUGE ROCKET#  LAUNCHER!"
        FACESTR[23] = 660
        STR[23] = "* I'm talking about the#  weapon, lass."
        FACESTR[24] = 653
        STR[24] = "* Well, I should get#  going.#* Bye for now!"
    }
}
else
{
    with (instance_create(x, y, obj_text_box))
    {
        if (global.janekilled == 0)
            MAXSTR = 14
        else
            MAXSTR = 15
        textvoice = 99
        FACESTR[0] = 660
        STR[0] = "* Ach look, it's Miss#  wee goodie-shoes."
        FACESTR[1] = 654
        STR[1] = "* Ye gave me a beer?#* Oh, aren't you a#  wonderful person."
        FACESTR[2] = 656
        STR[2] = "* Please come visit me#  later, so we can prance#  through the grass"
        FACESTR[3] = 657
        STR[3] = "* and make little crowns#  out of daisies!"
        FACESTR[4] = 660
        STR[4] = "* I'm jokin', if ye're#  too thick to realise#  it on yer own."
        FACESTR[5] = 655
        STR[5] = "* I'm sure ya want to#  hire me now, right?"
        FACESTR[6] = 660
        STR[6] = "* Well, forget it.#* Ye still want to kill#  me employer."
        FACESTR[7] = 653
        STR[7] = "* I'm not gunna stop ye,#  but don't take it as#  an act of mercy."
        FACESTR[8] = 660
        STR[8] = "* If I weren't so#  exhausted, I'd kill ye#  in this instant."
        FACESTR[9] = 656
        STR[9] = "* So I'm just gunna wait#  for Misha to kill you#  when you try to get"
        FACESTR[10] = 656
        STR[10] = "* past him, cut yer head#  off and hand it over#  to Redmond."
        FACESTR[11] = 657
        STR[11] = "* I should have done#  this in the first#  place!"
        FACESTR[12] = 659
        STR[12] = "* Oh, and you ARE goin'#  ta die. "
        FACESTR[13] = 657
        STR[13] = "* Hiring him as a body#  guard was the smartest#  thing Redmond ever did."
        FACESTR[14] = 656
        STR[14] = "* Well, this is the last#  ye see of me, I'll#  leave now."
        FACESTR[15] = 653
        STR[15] = "* I'm gunna pay Jane#  a visit."
    }
}
global.genocideaborted = 1

