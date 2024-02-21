/// @description Insert description here
if global._type2 = true {
	visible = true;
	global._canmove = false
	if _helpme == false {
		show_debug_message("Keyboard cleared!")
		keyboard_string = ""
		_helpme = true
	}
	if (string_length(keyboard_string) < _limit) {
		_message2 = keyboard_string;
	}
	else {
		keyboard_string = _message2;
		global._canmove = true
		if _message2 == "3313" {
			audio_play_sound(snd_correct, 2, false)
			global._keycode2 = true
			global._codecorrect2 = true
			global._canmove2 = true
			visible = false
			global._type2 = false
		}
		else {
			audio_play_sound(snd_wronganswer, 2, false)
			keyboard_string = ""
			_message2 = ""
			sprite_index = spr_textboxererror
			global._codefalse2 = true
			global._canmove = true
			global._type2 = false
			alarm[0] = 60
		}
	}
}




