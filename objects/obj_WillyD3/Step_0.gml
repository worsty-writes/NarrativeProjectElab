if global._haskey {
	if place_meeting(x, y, Player_Ben) {
		if keyboard_check_released(key_next) {
			if(showing_dialog == false) {
				if(dialog.count() <= 0) {
					global._canmove = true;
					global._willyfloor1dia3 = true;
					dialog.add(spr_willytalkingneutral, "You ought to hurry, Master Benjamin.")
					return;
				}
				global._canmove = false;
				showing_dialog = true;
				current_dialog = dialog.pop();
			}
			else {
				showing_dialog = false;
				alpha = 0;
				keyboard_key_release(key_next)
			}
		}
	}
}


