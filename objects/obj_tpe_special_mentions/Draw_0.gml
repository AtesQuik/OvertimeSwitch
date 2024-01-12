draw_set_color(c_yellow)
draw_set_font(font_standard)
draw_text_ext(10, 250, string_hash_to_newline("Special mentions"), 22, 320)
draw_set_color(c_white)
if (y < 2400)
    draw_text_ext(10, 294, string_hash_to_newline("GLaDOS and Nino#for playtesting##Robotsan for the#OVERTIME cover art##/u/henke37 for uploading#the Gun Mettle skins##Filth, Pyromander,#Pineapple and DatDrummerGuy#for helping me with#translations##Ronald_D_D for unknowingly#supporting and helping me##Habana for being amazing##Bendroo for the bird song,#the Undertale soundtrack,#supporting me and without#whom this game would#have been finished#much earlier ;)##Toby Fox, for...well,#everything.##FatalSleep for the Textbox#engine##Muhammad Fihril Kamal#for the parallax backgrounds ##Shaun Spalding for the#saving + loading function##Canite for the jump and run#engine##/u/Krakob for the rock joke##/u/rqaa3721 for the entire#Undertale map##RangerX on GMC Yoyo Games#for the solution of#the audio not working##teamfortressconnichi2013ua#on Tumblr for the TF2#character color palette##Team Fortress 2 Classic#for the Mercenary design##Bad Time Simulator for#Dell's battle##The Undertale Wiki for game#mechanics, sprites, music,#sounds and quotes##http://rawr.ws/undertale/#for Undertale sprites,#sounds and music##'Boxxle' by 'Thinking Rabbit'#& Toshirou Inoue#for the mines-puzzles##dict.cc for translations##Lettercount.com for#helping with the letter count##Punoftheday.com for some#of the military puns##xiconeditor.com for the icon"), 22, 320)
if (y > 1200)
{
    draw_set_font(font_huge)
    draw_set_color(c_yellow)
    draw_text(36, 2184, string_hash_to_newline((("And you, " + string(global.playername)) + ".")))
}
draw_set_font(font_standard)
draw_set_color(c_white)

