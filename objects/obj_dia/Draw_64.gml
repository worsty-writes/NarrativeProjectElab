/// @description Insert description here
// You can write your code in this editor

draw_set_font(game_font);
draw_set_color(c_white);

// how many messages are in array

message_end = array_length_1d(message);
if (message_end > 0)
{
	// variables
	var _char_width = 7;
	var _line_end = 35;
	var _line = 0;
	var _space = 0;
	var i = 1;
	var _delay = 3;
	// test position
	t_x = Player_Ben.x;
	t_y = Player_Ben.y;
	// typewriter effect
	if _cutoff < string_length(message[message_current])
	{
		if _timer >= _delay
		{
			_cutoff++;
			_timer = 0;
		}
		else _timer++;
	}
	
	if (keyboard_check_pressed(vk_space))
	{
		if (message_current < message_end-1)
		{
			message_current++;
			cutoff = 0;
		}
		else
		{
			done = true;
		}
	}
	
	while i <= string_length(message[message_current]) && i <= _cutoff
	{
		//go to next line
		var _length = 0;
		while string_char_at((message[message_current]), i)  != " " && i <= string_length(message[message_current])
		{
			i++;
			_length++;
		}
		
		if (_space + _length) > _line_end
		{
			_space = 0;
			_line++;
		}
		
		i -= _length;
		
		draw_text(t_x+(_space*_char_width), t_y+(13*_line), string_char_at(message[message_current], i));
		
		_space++;
		i++;
	}
	
	// draw potrait
	switch(cutie)
	{
		case "none":
		{
			break;
		}
		case "diest":
		{
			draw_spite(spr_ben_forwardstill, 0, 5, view_hview[0]-55);
			break;
		}
	}
}