/// @description Insert description here
// You can write your code in this editor

if global._haskey == true
{
	if place_meeting(x,y+4,Player_Ben)
	{
		audio_play_sound(explosion, 10, false)
		global._dooropen = true
		instance_destroy()
	}
}

