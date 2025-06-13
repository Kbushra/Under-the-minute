if room == rmFirst && audio_is_paused(music) { audio_resume_all(); }

switch global.stage
{
	case 0: loop(0, 16); break;
	case 1: loop(16, 48); break;
	case 2: loop(48, 80); break;
	case 3: loop(80, 112); break;
	case 4: loop(112, 128); break;
}

global.musPos = audio_sound_get_track_position(music);