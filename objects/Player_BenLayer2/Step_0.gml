// make it so that when it moves right it can move right, etc
if global._bennyup == true {
	if global._canmove == true {
		if keyboard_check(ord("D")) && place_free(x + _collisionSpeed, y)
		{
			_moving = true
		    x += _walkspeed;
		}

		if keyboard_check(ord("A")) && place_free(x - _collisionSpeed, y)
		{
			_moving = true
		    x -= _walkspeed;
		}

		if keyboard_check(ord("W")) && place_free(x, y - _collisionSpeed)
		{
			_moving = true
		    y -= _walkspeed;
		}

		if keyboard_check(ord("S")) && place_free(x, y + _collisionSpeed)
		{
			_moving = true;
		    y += _walkspeed;
		}
		else
		{
			_moving = false
		}

		if _moving == false
		{
			if _facing == 0
			{
				sprite_index = spr_ben_forwardstill
			}
			if _facing == 1
			{
				sprite_index = spr_ben_leftstill
			}
			if _facing == 2
			{
				sprite_index = spr_ben_backwardstill
			}
			if _facing == 3
			{
				sprite_index = spr_ben_rightstill
			}
		}


		if keyboard_check(ord("D"))
		{
			sprite_index = spr_ben_rightwalking
			_facing = 3
		}

		if keyboard_check(ord("A"))
		{
			sprite_index = spr_ben_leftwalking
			_facing = 1
		}
	
	
		if keyboard_check(ord("W"))
		{
			sprite_index = spr_ben_backwardwalking
			_facing = 2
		}


		if keyboard_check(ord("S"))
		{
			sprite_index = 	spr_ben_forwardwalk
			_facing = 0
	
		}
	}
	else 
	{
		if _facing == 0
			{
				sprite_index = spr_ben_forwardstill
			}
			if _facing == 1
			{
				sprite_index = spr_ben_leftstill
			}
			if _facing == 2
			{
				sprite_index = spr_ben_backwardstill
			}
			if _facing == 3
			{
				sprite_index = spr_ben_rightstill
			}
		if keyboard_check(ord("D"))
			{
			    x += 0;
			}

			if keyboard_check(ord("A"))
			{
			    x -= 0;
			}

			if keyboard_check(ord("W"))
			{
			    y -= 0;
			}

			if keyboard_check(ord("S"))
			{
			    y += 0;
			}
		}
	}