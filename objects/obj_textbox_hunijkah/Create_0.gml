textvoice = snd_voice_empty
fontname = font_empty
global.textboxon = 1
enterReady = 0
visible = false
if (global.txtCur == 0)
    scr_init_typ(global.txtCode)
else
    scr_end_typ()
alarm[0] = 30

