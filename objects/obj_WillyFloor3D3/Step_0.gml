if global._codecorrect4 == true {
	instance_destroy()
}

if global._codecorrect3 {
	if place_meeting(x, y, Player_BenLayer2) {
		if keyboard_check_released(key_next) {
			if(showing_dialog == false) {
				if(dialog.count() <= 0) {
					global._canmove = true;
					global._willyfloor3dia3 = true;
					dialog.add(spr_willytalkingneutral, "The game has changed, but the puzzle remains the same.");
					dialog.add(spr_willytalkingneutral, "Start with me and travel clockwise. Pay attention to the stuffed animal on the ground.");
					dialog.add(spr_willytalkingneutral, "Beyond that, my nonexistent lips are sealed.");
					dialog.add(spr_bennytalkingneutral, "Great. Thanks, Willy.");
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


