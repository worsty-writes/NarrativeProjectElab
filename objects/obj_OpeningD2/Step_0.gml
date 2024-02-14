/// @description Insert description here
// You can write your code in this edito
if global._firstdia2 == true {
	if(showing_dialog == false) {
		if(dialog.count() <= 0) {
			global._canmove = true;
			instance_destroy();
			global._firstdia3 = true
			global._playsilly = false
			global._playliminal = true
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