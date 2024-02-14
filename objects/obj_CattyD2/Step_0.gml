
if global._bonusdia {
	global._playliminal = false
	global._playsilly2 = true
	if(showing_dialog == false) {
		if(dialog.count() <= 0) {
			global._canmove = true;
			instance_destroy();
			return;
		}
		global._canmove = false;
		showing_dialog = true; 
		current_dialog = dialog.pop();
	} 
	else {
		if(keyboard_check_released(key_next)) {
			showing_dialog = false;
			alpha = 0;
		}
	}
}