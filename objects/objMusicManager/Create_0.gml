music = audio_play_sound(musSleep, 10, false);

function setPos(pos) { audio_sound_set_track_position(music, pos); }
function loop(lower, upper)
{
	if audio_sound_get_track_position(music) > upper 
	|| audio_sound_get_track_position(music) < lower { setPos(lower); }
}

setPos(global.musPos);
if !variable_global_exists("respawn") { audio_pause_all(); }