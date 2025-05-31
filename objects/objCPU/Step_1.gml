if !active { exit; }

if pos >= string_length(text[page])
{
	dialogueTimer--;
	if dialogueTimer <= 0
	{
		page++;
		dialogueTimer = 120;
		char_counter = 0;
		pos = 0;
	}
}
else
{
	pos++;
	char_counter++;
	
	if string_char_at(text[page], pos) != "."
	{
		var snd = audio_play_sound(sndCPU, 10, false);
		if lines == 0 && page < 3 { audio_sound_pitch(snd, 0.4); }
		else { audio_sound_pitch(snd, random_range(0.8, 1)); }
	} 
}

if page >= array_length(text) { active = false; }