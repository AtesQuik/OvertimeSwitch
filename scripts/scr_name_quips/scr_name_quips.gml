function scr_name_quips() {
	with (instance_create(x, y, obj_text_box))
	{
	    MAXSTR = 0
	    if (global.playername == "Jane" || global.playername == "JANE")
	    {
	        fontname = 4
	        textvoice = 86
	        STR[0] = "GENIUS!#IT'S THE MOST PATRIOTIC#NAME YOU CAN HAVE!"
	    }
	    else if (global.playername == "Dell" || global.playername == "dell" || global.playername == "Engie")
	    {
	        fontname = 5
	        textvoice = 85
	        STR[0] = "* welp. couldnt stop ya#  from choosing that even#  if i tried."
	    }
	    else if (global.playername == "Sani" || global.playername == "Medic")
	    {
	        textvoice = 82
	        STR[0] = "* A flattering choice.#* Danke."
	    }
	    else if (global.playername == "Zeph")
	        STR[0] = "* First my land, now my own#  NAME is taken from me?#* Woe is me."
	    else if (global.playername == "Sniper" || global.playername == "Mundy")
	    {
	        textvoice = 96
	        STR[0] = "* Just be polite and#  efficient."
	    }
	    else if (global.playername == "Tavish" || global.playername == "Demo")
	    {
	        textvoice = 99
	        STR[0] = "* I won't remember anything#  ye do anyway, so go for it."
	    }
	    else if (global.playername == "Spy")
	    {
	        textvoice = 97
	        STR[0] = "* Pretending to be someone#  else, I see...#* Ahahaha~"
	    }
	    else if (global.playername == "Eli" || global.playername == "Doc")
	    {
	        textvoice = 104
	        STR[0] = "* Ohhh, what a fascinating#  turn of events!"
	    }
	    else if (global.playername == "Scout")
	    {
	        textvoice = 98
	        STR[0] = "* Oh man! And I thought#  I was the only one who#  loved me!"
	    }
	    else if (global.playername == "Misha" || global.playername == "Heavy")
	    {
	        textvoice = 81
	        STR[0] = "* We are giant!"
	    }
	    else if (global.playername == "Pyro" || global.playername == "Niall")
	        STR[0] = "* Mmm mmph, Mmph mmmh."
	    else if (global.playername == "Jim" || global.playername == "Chungu")
	        STR[0] = "* I hope you'll also effing#  love this one.#* Break these chains of love."
	    else if (global.playername == "Array" || global.playername == "Array7")
	        STR[0] = "* I hope you'll have more#  fun with this than a kid#  in an ice cream factory."
	    else if (global.playername == "Scott")
	        STR[0] = "* The most handsomest guy#  under the sun."
	    else if (global.playername == "SrPelo" || global.playername == "Pelo")
	        STR[0] = "* Have fun with the game!#* And remember:#* Don't disturb the world."
	    else if (global.playername == "Ben" || global.playername == "Milan")
	        STR[0] = "* Thanks for being an#  absolutely amazing friend.#* Now enjoy the game, buddy!"
	    else if (global.playername == "Habana" || global.playername == "Habbie" || global.playername == "Hab")
	        STR[0] = "* o. hello :33#* that's the habbiest of#  names! eat gud bread. ja."
	    else if (global.playername == "Medli")
	        STR[0] = "* The sweetest of bird#  persons."
	    else if (global.playername == "Star" || global.playername == "Star_" || global.playername == "ster" || global.playername == "ster_")
	        STR[0] = "* Even if you don't play TF2#  anymore, you were a source#  of much joy for me."
	    else if (global.playername == "Jerma" || global.playername == "Jer" || global.playername == "Jeremy")
	        STR[0] = "* Heyy there, everyone,#  Jerma here, with another#  gaaameplay commentary."
	    else if (global.playername == "Maxbox" || global.playername == "MaxBox")
	        STR[0] = "* Enjoy the game ;3"
	    else if (global.playername == "FUNKe" || global.playername == "Funke" || global.playername == "Justyn")
	        STR[0] = "* Truth be told, you're#  a pretty funky dude."
	    else if (global.playername == "UncleD" || global.playername == "Duncle" || global.playername == "Uncle" || global.playername == "Dane")
	        STR[0] = "* Well, guess that'll do."
	    else if (global.playername == "Dunkey")
	        STR[0] = "* Hey guys it's me,#  Videogamedunkey!"
	    else if (global.playername == "Scarce")
	        STR[0] = "* Hey what's up guys,#  it's Scarce here."
	    else if (global.playername == "Ronald")
	        STR[0] = "* Remember when you told me#  to make my own Undertale?#* Yeah."
	    else if (global.playername == "Devil" || global.playername == "Derp")
	        STR[0] = "* Das hast du nie erwartet,#  oder? :3c#* Viel Spaß~"
	    else if (global.playername == "Peeka")
	        STR[0] = "* Tsk tsk tsk. You're#  playing this before even#  finishing the original?"
	    else if (global.playername == "Fenrir")
	        STR[0] = "* Hey, there's places, hang#  the marksman here."
	    else if (global.playername == "Joel")
	        STR[0] = "* Joel!#* JOEL! Are you playing#  Undertale bootlegs, JOEL?!?"
	    else if (global.playername == "Vinny")
	        STR[0] = "* IT'S HIP TO...#* Be a nice guy to everyone."
	    else if (global.playername == "MDave" || global.playername == "Dave" || global.playername == "David")
	        STR[0] = "* Gear up, get your brassoi#  apropecsenye and prepare#  for an adventure."
	    else if (global.playername == "Pelle" || global.playername == "Cakey")
	        STR[0] = "* The cakiest of bombs."
	    else if (global.playername == "Kenny")
	        STR[0] = "* The guy with the biggest#  heart, who gifted almost#  500 Secret Saxtons."
	    else if (global.playername == "Octavi" || global.playername == "Eight" || global.playername == "Miss8")
	        STR[0] = "* Glad to have you finally#  play my game after you#  were gone for so long!"
	    else if (global.playername == "Roobea")
	        STR[0] = "* This is what I needed your#  help for!#* IT'S TOO LATE NOW! >:("
	    else if (global.playername == "Cybor" || global.playername == "Martin")
	        STR[0] = "* The deadliest marksman#  you should NEVER meet.#* But he's a great guy, too!"
	    else if (global.playername == "Ashen" || global.playername == "Ashens")
	        STR[0] = "* Hello!"
	    else if (global.playername == "Grand")
	        STR[0] = "* GRAND DAD?#* FLEENTSTONES?!?#* Oh no...oh dios mio!"
	    else if (global.playername == "Simple")
	        STR[0] = "* Shoutouts to Simpleflips!"
	    else if (global.playername == "SiIva" || global.playername == "GiIva")
	        STR[0] = "* High Quality Game (Rips)."
	    else if (global.playername == "Jon" || global.playername == "Jontro")
	        STR[0] = "* ECH."
	    else if (global.playername == "Stan")
	        STR[0] = "* 8888 8888."
	    else if (global.playername == "Gordon")
	        STR[0] = "* ..."
	    else if (global.playername == "Nino")
	        STR[0] = "* Vielen Dank fuers Testen!"
	    else if (global.playername == "Robot" || global.playername == "Malika" || global.playername == "Robutt" || global.playername == "Robots")
	        STR[0] = "* Thanks for that thumbnail!"
	    else if (global.playername == "Glados" || global.playername == "GLaDOS")
	        STR[0] = "* The mind of a machine#  inside a human body. Or was#  it the other way around?"
	    else if (global.playername == "Ethan" || global.playername == "h3h3" || global.playername == "H3H3" || global.playername == "H3h3")
	        STR[0] = "* Wow, Ethan, great moves.#* Keep it up.#* Proud of you."
	    else if (global.playername == "Tyler" || global.playername == "VNN")
	        STR[0] = "* Hi, I'm Tyler McVicker#  from ValveNewsNetwork, and#  today I'm playing this."
	    else if (global.playername == "Muselk")
	        STR[0] = "* Ohhh baby!"
	    else if (global.playername == "Guru" || global.playername == "Larry" || global.playername == "Bundy")
	        STR[0] = "* Hello, you!"
	    else if (global.playername == "LGR")
	        STR[0] = "* This is a naming screen#  which is really good for#  naming things."
	    else if (global.playername == "Toby" || global.playername == "Tobdog")
	        STR[0] = "* I hope you enjoy this just#  1/10th as much as I enjoyed#  your wonderful game."
	    else if (global.playername == "Peter" || global.playername == "German" || global.playername == "Germy")
	        STR[0] = "* The name of the maker."
	    else if (global.playername == "Niklas")
	        STR[0] = "* The maker's brother."
	    else if (global.playername == "Fanic")
	        STR[0] = "* Thanks for including me#  in that Saxxy entry.#* Better luck next time."
	    else if (global.playername == "Pybun" || global.playername == "Py-bun" || global.playername == "Py_bun" || global.playername == "pybun" || global.playername == "Ronina")
	        STR[0] = "* Is it a Pyro? Is it a bun?#* No! It's a Pybun!#* So cute."
	    else if (global.playername == "Kath")
	        STR[0] = "* Thanks for the free#  Undertale cards on Steam!#* And enjoy the game :)"
	    else if (global.playername == "Death" || global.playername == "Kill" || global.playername == "Shadow" || global.playername == "Killer" || global.playername == "Murder" || global.playername == "Reaper")
	        STR[0] = "* Ow, the edge"
	    else if (global.playername == "Filth" || global.playername == "Ruth")
	        STR[0] = "* The filthiest and nicest#  friend anyone could ask#  for."
	    else if (global.playername == "Fabien")
	        STR[0] = "* Sweeter than an actual#  Pineapple. <3"
	    else if (global.playername == "Maku")
	        STR[0] = "* The tiniest and cutest#  white dog. Also a great#  Demoma- I mean Roamer."
	    else if (global.playername == "Batter")
	        STR[0] = "* You won't be able to take#  your hands OFF your weapon#  and will be forced to kill."
	    else if (global.playername == "Alex" || global.playername == "Lethal")
	        STR[0] = "* The turtliest of turtles.#  Also a very lethal kitten.#* But still a good friend."
	    else if (global.playername == "Misel")
	        STR[0] = "* Enjoy the game, my#  absolutely awesome and#  super nice friend! :)"
	    else if (global.playername == "Mario")
	        STR[0] = "* It's-a me!#* Cease and desist!"
	    else if (global.playername == "Konami")
	        STR[0] = "* You're the worst."
	    else if (global.playername == "Ghee")
	        STR[0] = "* Booooooooooo!"
	    else if (global.playername == "Druss")
	        STR[0] = "* What's all the fuss, Druss?"
	    else if (global.playername == "Lee" || global.playername == "Leeman")
	        STR[0] = "* Can't wait for you to make#  low-effort memes about#  this game!"
	    else if (global.playername == "Cena" || global.playername == "CENA")
	        STR[0] = "* AND HIS NAME IS..."
	    else if (global.playername == "Quake" || global.playername == "QUAKE")
	        STR[0] = "* Where it all began."
	    else if (global.playername == "Doom" || global.playername == "DOOM")
	        STR[0] = "* RIP AND TEAR!"
	    else if (global.playername == "Robbie" || global.playername == "Rotten")
	        STR[0] = "* I guess you'll have to#  teach us how to be#  villains number one!"
	    else if (global.playername == "      ")
	        STR[0] = "* Wow, cheating the system.#* Really clever."
	    else if (global.playername == "aaaaaa" || global.playername == "AAAAAA")
	        STR[0] = "* Why are you screaming?"
	    else if (global.playername == "SharaX")
	        STR[0] = "* Thanks for your remixes,#  they made the programming#  way more epic!"
	    else if (global.playername == "Uber" || global.playername == "Chain")
	        STR[0] = "* One of TF2's many skilled#  artists."
	    else if (global.playername == "Harris" || global.playername == "Bomber")
	        STR[0] = "* How about an analysis of#  this game?#* Just kidding."
	    else if (global.playername == "Jacket")
	        STR[0] = "* Do you like hurting other#  people? WARNING: This will#  always limit your HP to 1."
	    else if (global.playername == "Gabe")
	        STR[0] = "* He filled our hearts with#  love and borks.#* Sleep well, pupper."
	    else if (global.playername == "Gaben")
	        STR[0] = "* After over a year in#  development, hopefully#  it was worth the wait."
	    else if (global.playername == "Maxie")
	        STR[0] = "* The REAL Combustile Cutie#  is you, Maxie. Thanks a#  million for the free hat!"
	    else if (global.playername == "Haedox")
	        STR[0] = "* Hope you'll enjoy playing#  this one too!"
	    else if (global.playername == "Mack")
	        STR[0] = "* Is it worth a download?#* Don't forget your bell."
	    else if (global.playername == "Soviet")
	        STR[0] = "* Shhh, it's okay.#* Cyanide isn't here.#* He can't hurt you anymore."
	    else if (global.playername == "Cake")
	        STR[0] = "* How can be someone so cute?"
	    else if (global.playername == "CuteC3" || global.playername == "CUTEC3")
	        STR[0] = "* Your animations sure live#  up to your name:#* They're very cute."
	    else if (global.playername == "Agro")
	        STR[0] = "* Thanks for inviting me to#  KritzKast!"
	    else if (global.playername == "J.D." || global.playername == "JDSFM" || global.playername == "JD")
	        STR[0] = "* Keep your determination.#* Never give up, and you'll#  be very big one day."
	    else if (global.playername == "Dallas")
	        STR[0] = "* AAAAAAAAAAAAAAAAAAAAAAA"
	    else if (global.playername == "Mike" || global.playername == "Mikey")
	        STR[0] = "* Thanks for all the help#  on the Minecraft server#  and for the cake as well."
	    else if (global.playername == "Fuzzy")
	        STR[0] = "* A really, really cute cat."
	    else if (global.playername == "Ness")
	        STR[0] = "* Okay!"
	    else if (global.playername == "Papyru" || global.playername == "PAPYRU")
	    {
	        fontname = 4
	        textvoice = 105
	        STR[0] = "SANS? THAT HUMAN IS#CHOOSING MY NAME!#I FEEL SO SPECIAL!"
	    }
	    else if (global.playername == "Sans" || global.playername == "sans")
	    {
	        fontname = 5
	        textvoice = 106
	        STR[0] = "* alright."
	    }
	    else if (global.playername == "Toriel" || global.playername == "Tori")
	    {
	        textvoice = 109
	        STR[0] = "* My child, please always#  strive to be the nicest#  you can."
	    }
	    else if (global.playername == "Alphys")
	    {
	        textvoice = 107
	        STR[0] = "* I knew it!#* I knew there were other#  worlds out there!"
	    }
	    else if (global.playername == "Asgore")
	    {
	        textvoice = 110
	        STR[0] = "* Are you sure you don't#  want a nice cup of tea#  instead?"
	    }
	    else if (global.playername == "Undyne")
	    {
	        textvoice = 108
	        STR[0] = "* NGAHHHH! I already feel our#  hearts beating as one!#* Let's kick some tail!"
	    }
	    else if (global.playername == "Flowey")
	    {
	        textvoice = 83
	        STR[0] = "* You IDIOT.#* I'm not even from your#  game!"
	    }
	    else if (global.playername == "Asriel")
	    {
	        textvoice = 111
	        STR[0] = "* Don't you have anything#  better to pick?"
	    }
	    else if (global.playername == "Frisk")
	        STR[0] = "* Warning: entering this name#  does absolutely nothing#  and is completely safe."
	    else if (global.playername == "Chara")
	        STR[0] = "* This name has no power#  here."
	    else if (global.playername == "Temmie")
	        STR[0] = "* hOI!"
	    else
	        instance_destroy()
	}



}
