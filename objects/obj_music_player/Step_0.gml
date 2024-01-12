if (global.musictitle != snd_test)
{
    if (global.musictitle == musictrack)
    {
        if (global.genocide == 1)
        {
            if (musictrack == mus_ruins || musictrack == mus_fallen_down || musictrack == mus_home || musictrack == mus_snowy || musictrack == mus_dungeon || musictrack == mus_snowdin_town || musictrack == mus_waterfall || musictrack == mus_waterquiet || musictrack == mus_run || musictrack == mus_anothermedium || musictrack == mus_lab || musictrack == mus_hotel || musictrack == mus_core || musictrack == mus_smallshock)
            {
                if (!audio_is_playing(mus_geno_theme))
                    audio_play_sound(mus_geno_theme, 100, true)
                musictrack = mus_geno_theme
                global.musictitle = 212
            }
            else if (musictrack == mus_nyeh || musictrack == mus_bonetrousle)
            {
                if (!audio_is_playing(mus_geno_jane))
                    audio_play_sound(mus_geno_jane, 100, true)
                musictrack = mus_geno_jane
                global.musictitle = 214
            }
            else if (musictrack == mus_sans || musictrack == mus_battletheme || musictrack == mus_battle2)
            {
                if (!audio_is_playing(mus_geno_battle))
                    audio_play_sound(mus_geno_battle, 100, true)
                musictrack = mus_geno_battle
                global.musictitle = 213
            }
            else if (!audio_is_playing(musictrack))
                audio_play_sound(musictrack, 100, true)
        }
        else if (!audio_is_playing(musictrack))
            audio_play_sound(musictrack, 100, true)
    }
    else
    {
        audio_stop_sound(global.musictitle)
        global.musictitle = musictrack
    }
}

