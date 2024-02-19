if global._codecorrect3 {
	instance_destroy()
}

if global._willyfloor2dia1 {
	if place_meeting(x, y, Player_BenLayer2) {
		if keyboard_check_released(key_next) {
			if(showing_dialog == false) {
				if(dialog.count() <= 0) {
					global._canmove = true;
					global._willydiafloor2dia2 = true;
					dialog.add(spr_willytalkingneutral, "Once again, from where you are now, travel the room clockwise and count the dolls. That will unveil the 4-DIGIT-PASSCODE to get [The Third Key].");
					dialog.add(spr_willytalkingneutral, "You must reach a [Door] to the northwest. In order to enter, you will need [The Second Key], which is behind a [Wall].");
					dialog.add(spr_willytalkingneutral, "However, this room also requires a 5-DIGIT-CODE to reach the door. Solve the first code, come back, and I shall give you your second hint.")
					dialog.add(spr_bennytalkingneutral, "... Great. Alright, let's do this.")
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


