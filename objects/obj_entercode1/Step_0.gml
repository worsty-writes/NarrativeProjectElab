/// @description Insert description here
if global._type = true {
	visible = true;
	global._canmove = false
	if _helpme == false {
		show_debug_message("Keyboard cleared!")
		keyboard_string = ""
		_helpme = true
	}
	if (string_length(keyboard_string) < _limit) {
		_message = keyboard_string;
	}
	else {
		keyboard_string = _message;
		global._canmove = true
		if _message == "2123" {
			audio_play_sound(snd_correct, 2, false)
			global._keycode = true
			global._codecorrect = true
			global._canmove = true
			visible = false
			global._type = false
		}
		else {
			audio_play_sound(snd_wronganswer, 2, false)
			keyboard_string = ""
			_message = ""
			sprite_index = spr_textboxererror
			global._canmove = true
			global._codefalse = true
			global._type = false
			alarm[0] = 60
		}
	}
}




