/// @description Insert description here
if global._type3 = true {
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
		if _message2 == "1233" {
			audio_play_sound(snd_correct, 2, false)
			global._keycode3 = true
			global._codecorrect3 = true
			global._canmove3 = true
			visible = false
			global._type3 = false
		}
		else {
			audio_play_sound(snd_wronganswer, 2, false)
			keyboard_string = ""
			_message2 = ""
			sprite_index = spr_textboxererror
			global._canmove = true
			global._type3 = false
			alarm[0] = 60
		}
	}
}




