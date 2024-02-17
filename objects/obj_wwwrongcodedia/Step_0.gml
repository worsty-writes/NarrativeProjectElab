/// @description Insert description here
// You can write your code in this editor
if global._codewrong == true {
	if(showing_dialog == false) {
		if(dialog.count() <= 0) {
			global._canmove = true;
			dialog.add(spr_nothing, "you got it wrong :/ try again")
			global._codewrong = false
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



