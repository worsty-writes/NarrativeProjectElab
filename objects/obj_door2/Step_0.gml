if global._haskey2 == true
{
	if place_meeting(x,y+5,Player_BenLayer2)
	{
		audio_play_sound(explosion, 10, false)
		global._dooropen2 = true
		instance_destroy()
	}
}
