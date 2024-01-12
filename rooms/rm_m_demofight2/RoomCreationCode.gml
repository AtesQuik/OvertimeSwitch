if (global.drunk == 0)
    global.battleapproachstring = "* Tavish attacks!"
else
    global.battleapproachstring = choose("* Tavish attacks...drunkely.", "* Tavish attacks...#* ...or at least tries.", "* Tavish attacks you.#* At least that's what he#  thinks he's doing.", "* Tavish throws up.#* Oh, and he also attacks.")
