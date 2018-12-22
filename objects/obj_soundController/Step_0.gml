/// @description Insert description here
// You can write your code in this editor
audio_sound_gain(snd_menu, global.musicVolume, 0);
if(room == world or room == intro){
	audio_stop_sound(snd_menu);
}
