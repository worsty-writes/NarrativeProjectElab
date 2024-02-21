if global._haskey2 {
	instance_destroy()
}

if global._willyfloor2dia1 {
if place_meeting(x, y, Player_BenLayer2) {
		if keyboard_check_released(key_next) {
			if(showing_dialog == false) {
				if(dialog.count() <= 0) {
					global._canmove = true;
					global._willyfloor2dia2 = true;
					dialog.add(spr_willytalkingneutral, "Much like last time, you will be wandering about the room, traveling clockwise from this position.");
					dialog.add(spr_willytalkingneutral, "You must reach a [Door] to the northwest. In order to enter, you will need [The Second Key], which is behind a [Wall].");
					dialog.add(spr_willytalkingneutral, "To remove the [Wall], you must enter a 4-DIGIT CODE, then press [SPACE].");
					dialog.add(spr_willytalkingneutral, "Starting where you are now, travel the room clockwise and count the hanging dolls. They shall reveal the code.");
					dialog.add(spr_willytalkingneutral, "I should warn you though, your navigation this time around may be... slightly more difficult than the previous room.");
					dialog.add(spr_bennytalkingneutral, "Got it. Thanks, Willy.")
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


