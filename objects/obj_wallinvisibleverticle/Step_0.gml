/// @description Insert description here
// You can write your code in this editor

if place_meeting(x+5, y, Player_BenLayer2) or place_meeting(x, y-5, Player_BenLayer2) or place_meeting(x, y+5, Player_BenLayer2) or place_meeting(x-5, y, Player_BenLayer2) {
	image_alpha = 0.5
	show_debug_message("hitwall true!")
	global._hitwall = true
	if _soundalarm == false {
		audio_play_sound(snd_horn, 3, true)
		_soundalarm = true
	}
}
else {
	image_alpha = 0
	if _soundalarm == true {
		audio_stop_sound(snd_horn)
		_soundalarm = false
	}
}


