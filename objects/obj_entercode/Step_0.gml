/// @description Insert description here
if global._type = true {
	visible = true;
	global._canmove = false
	if (string_length(keyboard_string) < _limit) {
		_message = keyboard_string;
	}
	else {
		keyboard_string = _message;
		global._canmove = true
		if _message == "2123" {
			global._keycode = true
		}
		else {
			audio_play_sound(explosion, 2, false)
			_message = ""
			global._type = false
		}
	}
}




