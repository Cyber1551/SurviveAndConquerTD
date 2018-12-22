/// @description Insert description here
// You can write your code in this editor
//instance_create_layer(x, y, "Instances", obj_stone_item);
//if(obj_player.breaking){
//show_message(index);
if(position_meeting(mouse_x, mouse_y, obj_tile_tree) and distance_to_point(obj_player.x, obj_player.y) <= 100 and mouse_check_button(mb_left)){
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
self.oreValue-=1;
if(self.oreValue <= 0){
	var rr = choose(0, 1, 2);
	if(rr == 1){
		var sk = instance_create_layer(x+choose(-16, 16), y+choose(-16, 16), "Instances", obj_stick);
		with(sk){
			speed = .5;
			direction = random(360);
			alarm[1] = room_speed/2;
		}
	}
			ii = 1;
			alarm[1] = 2000;
}
	global.breaking = false;
	isBreaking = false;
	index = 0;
}
//for(var i  =0; i < 10; i++){
}else{
isBreaking = false;
index=0;

}
//}