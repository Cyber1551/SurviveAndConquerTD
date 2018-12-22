/// @description Insert description here
// You can write your code in this editor
if(file_exists("Save.sav")){
ini_open("Save.sav");
	if(ini_key_exists("Options", "Music")){
		global.musicVolume = ini_read_real("Options", "Music", 1);
	}else{
	global.musicVolume = 1;
	}	
	ini_close();
}else{
global.musicVolume = 1;
}

if(!audio_is_playing(snd_menu)){
	audio_play_sound(snd_menu, 100, true);
	audio_sound_gain(snd_menu, global.musicVolume, 0);
}