/// Handle keypressed
if(!placeholder){
if(keyboard_check(vk_anykey) and string_length(text) < 27){
	text = text+string(keyboard_string);
	keyboard_string = "";
}

if(keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and deleteTimer = 2){
	text = string_delete(text, string_length(text), 1);
	deleteTimer = 0;
	keyboard_string = "";
}
if(keyboard_check_pressed(vk_backspace)){
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	deleteTimer = -4;
}
if(deleteTimer != 2){
deleteTimer++;
}
if(string_length(text) == 0){
	text = "Please enter your name...";
	placeholder = true;
}
}else{
if(keyboard_check(vk_anykey) and string_length(text) < 27){
	text = "";
	placeholder = false;
	
}
}
