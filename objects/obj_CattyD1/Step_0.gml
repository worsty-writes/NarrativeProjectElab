if place_meeting(x, y, Player_BenLayer2) {
	if keyboard_check_released(key_next) {
		if(showing_dialog == false) {
			if(dialog.count() <= 0) {
				global._talkcatty = true
				if global._willyfloor1dia3 && global._willyfloor2dia3 && global._willyfloor3dia4 && global._checkcat = false {
					global._bonusdia = true
					global._checkcat = true
				}
				global._canmove = true
				instance_destroy()
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