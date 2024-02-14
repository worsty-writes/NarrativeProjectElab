if global._haskey {
	instance_destroy()
}

if global._willydia1 {
	if place_meeting(x, y, Player_Ben) {
		if keyboard_check_released(key_next) {
			if(showing_dialog == false) {
				if(dialog.count() <= 0) {
					global._canmove = true;
					global._willydia1 = true;
					dialog.add(spr_bennytalkingneutral, "Hey, Willy. Remind me again what the clue was?");
					dialog.add(spr_willytalkingneutral, "Indeed. I have been programmed to give you the instructions for this Game. I shall read them to you now...");
					dialog.add(spr_willytalkingneutral, "Lady Catherine is the one who holds the exit to this dungeon. Reach her, and freedom is yours.");
					dialog.add(spr_willytalkingneutral, "Her chambers lies behind the door to the left. In order to enter, you will need The Key.");
					dialog.add(spr_willytalkingneutral, "Head Northeast to find The Key.");
					dialog.add(spr_bennytalkingneutral, "Got it. Thanks, Willy. You're a real doll.");
					dialog.add(spr_willytalkingneutral, "That is objectively true, Master Benjamin. I am a doll.");
					dialog.add(spr_bennytalkingneutral, "That wasn't... Nevermind.");
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


