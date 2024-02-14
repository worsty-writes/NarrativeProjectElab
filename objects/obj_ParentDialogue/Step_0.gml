/// @description Insert description here
// You can write your code in this editor

/// @description 


if(showing_dialog == false) {
	if(dialog.count() <= 0) {
		global._canmove = true;
		instance_destroy();
		return;
	}
	if place_meeting(x, y, Player_Ben) {
		if keyboard_check_released(key_next) {
			keyboard_key_press(key_next)
			global._canmove = false;
			show_debug_message("Player can't move!")
			showing_dialog = true; 
			current_dialog = dialog.pop();
		}
	}
} 
else {
	if(keyboard_check_released(key_next)) {
		showing_dialog = false;
		alpha = 0;
	}
}