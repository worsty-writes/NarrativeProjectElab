/// @description Insert description here
// You can write your code in this editor
if global._type3 == true {
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

if global._codecorrect3 = true {
	instance_destroy()
}
if global._codefalse3 = true {
	instance_destroy()
}

