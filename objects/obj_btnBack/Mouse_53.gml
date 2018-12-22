/// @description Insert description here
// You can write your code in this editor

if(hover){
	if(room = Options){
	//if(file_exists("Save.sav")) file_delete("Save.sav");
	ini_open("Save.sav");
	ini_write_real("Options", "Music", global.musicVolume);
	ini_close();
	room_goto(MainMenu);
	}else{
	room_goto(MainMenu);
	}
}