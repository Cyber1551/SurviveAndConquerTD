/// @description Insert description here
// You can write your code in this editor
/*if(page == obj_guide.question){
	if(keyboard_check(vk_numpad1) or keyboard_check(ord("1"))){
		obj_guide.answer = 1;
	}else if(keyboard_check(vk_numpad2) or keyboard_check(ord("2"))){
		obj_guide.answer = 2;
	}else if(keyboard_check(vk_numpad3) or keyboard_check(ord("3"))){
	obj_guide.answer = 3;
	}else if(keyboard_check(vk_numpad4) or keyboard_check(ord("4"))){
	obj_guide.answer = 4;
	}
	
}else*/ if(keyboard_check_pressed(ord("I"))){
//if(charCount == string_length(txt[page])){
	
	if(charCount < string_length(txt[page])){
		charCount = string_length(txt[page]);
	
	}else if(page+1 < array_length_1d(txt)){
		page+=1;
		charCount = 0;
		
	}else{
	room_goto(rm_ship);
		//instance_destroy();
		//creator.alarm[0] = 1;
	}
	//}
	if(page == 1){
		txtname =  "AI: "+choose("Jarvis", "HAL", "SIRI", "CORTANA");
		global.txtnm = txtname;
	}
}