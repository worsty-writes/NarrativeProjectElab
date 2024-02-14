/// @description Insert description here
// You can write your code in this editor


/// draw event
if place_meeting(x,y, Player_Ben) {
	if(keyboard_check_pressed(vk_space)) {
	      type = !type;
	      keyboard_string = Player_Input;
	}
	if(type) Player_Input = keyboard_string
	var t_ = Player_Input;
	if(t_ == "") t_ = "Player";
	draw_text(0, 0, t_);
}


