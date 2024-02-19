/// @description Insert description here
// You can write your code in this editor
if global._haskey3 == true {
	if(showing_dialog == false) {
		if(dialog.count() <= 0) {
			global._canmove = true;
			global._firstdia = true
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






