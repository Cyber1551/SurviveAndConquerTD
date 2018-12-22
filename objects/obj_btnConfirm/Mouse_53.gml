/// @description Insert description here
// You can write your code in this editor

if(hover){
	if(obj_input.text != "Please enter your name..."){
		if(global.sex != ""){
	global.name = obj_input.text;
	scr_savegame();
	//room_goto(world);
	room_goto(intro);
	}else{
		show_message("Please choose a gender");
	}
	}else{
		show_message("Please enter a name!");
	}
}