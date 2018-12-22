/// @description Insert description here
// You can write your code in this editor

if(file_exists("Save.sav")){
	ini_open("Save.sav");
	if(ini_key_exists("Options", "Music")){
		value = ini_read_real("Options", "Music", global.musicVolume);
	}else{
		value = global.musicVolume;
	}
	ini_close();
}else{
value = global.musicVolume;
}

maxValue = 1;
selected = false;
image_speed = 0;
image_index = 0;
x = (display_get_gui_width()/2)-100;
y = (display_get_gui_height()/2)