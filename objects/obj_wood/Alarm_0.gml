/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(x, y, "Instances", obj_stone_item);
//if(obj_player.breaking){
//show_message(index);
if(placed){
if(position_meeting(mouse_x, mouse_y, obj_wood) and distance_to_point(obj_player.x, obj_player.y) <= 100 and mouse_check_button(mb_left)){
	
		
	

global.breaking = true;
isBreaking = true;
if(index < 5){
	index++;
	
//}

	alarm[0] = (tough*60);
}else{


for(var i = 0; i < 10; i++){


		if((obj_player.inv[i] == -1) or (obj_player.inv[i] == ii)){
			obj_player.inv[i] = ii;
			obj_player.inv_num[i]++;
			break;
		}

	}

	global.breaking = false;
	isBreaking = false;
	index = 0;
	instance_destroy();
}

}else{
isBreaking = false;
index = 0;
}
}

//for(var i  =0; i < 10; i++){

//}