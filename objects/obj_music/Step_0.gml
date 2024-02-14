if global._playfan == true {
	if _checkmusic1 == true {
		audio_play_sound(snd_fanaudio, 2, true)
		show_debug_message("activating this sound!")
		_current_music = snd_fanaudio
		_checkmusic1 = false
	}
}
else {
	audio_stop_sound(snd_fanaudio)
}

if global._playsilly == true {
	if _checkmusic2 == true {
		audio_play_sound(snd_cat, 2, true)
		_current_music = snd_cat
		_checkmusic2 = false
	}
}
else {
	audio_stop_sound(snd_cat)
}

if global._playliminal == true {
	if _checkmusic3 = true {
		audio_play_sound(snd_liminal, 2, true)
		_current_music = snd_liminal
		_checkmusic3 = false
	}
}
else {
	audio_stop_sound(snd_liminal)
}

if global._playsilly2 == true {
	if _checkmusic4 == true {
		show_debug_message("Playing silly!")
		audio_play_sound(snd_kitty, 2, true)
		_current_music = snd_kitty
		_checkmusic4 = false
	}
}
else {
	audio_stop_sound(snd_kitty)
}