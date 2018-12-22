/// @description Insert description here
// You can write your code in this editor

if(hover){
	if(file_exists("Save.sav")){
		if(show_question("Are you sure? This will erase your previous character!")){
					room_goto(CharacterCreate);

		}
	}else{
		room_goto(CharacterCreate);
	}
	
}
