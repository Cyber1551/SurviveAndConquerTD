/// @description Insert description here
// You can write your code in this editor


switch(dir){
	case 0:
	//Wood
		if(place_meeting(x, y-collisionSpeed, obj_wood)){
		//show_message(true);
			var wood = instance_place(x, y-collisionSpeed, obj_wood);
			if(!wood.placed){
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wood.ii)){
						inv[i] = wood.ii;
						inv_num[i]++;
						with(wood){
							instance_destroy();
						}
					//	update = true;
					break;
					}
	
				}
	
		//	if(update){
			//	update=false;
				scr_update_crafting();
			//}
		}
	}
	
	//WorkBench
	
		if(place_meeting(x, y-collisionSpeed, obj_workbench)){
		//show_message(true);
			var wb = instance_place(x, y-collisionSpeed, obj_workbench);
			if(!wb.placed){
				global.workBench = false;
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wb.ii)){
						inv[i] = wb.ii;
						inv_num[i]++;
						with(wb){
							instance_destroy();
						}
						//update = true;
					break;
					}
	
				}
	
			//if(update){
				//update=false;
				scr_update_crafting();
			//}
		}else{
			global.workBench = true;
			
			
		}
	}else{
		global.workBench = false;
	}
	
	
	break;
	case 1:
		//Wood
		if(place_meeting(x, y+collisionSpeed, obj_wood)){
		//show_message(true);
			var wood = instance_place(x, y+collisionSpeed, obj_wood);
			if(!wood.placed){
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wood.ii)){
						inv[i] = wood.ii;
						inv_num[i]++;
						with(wood){
							instance_destroy();
						}
						//update = true;
					break;
					}
	
				}
	
			//if(update){
			//	update=false;
				scr_update_crafting();
			//}
		}
	}
	
	//WorkBench
	
		if(place_meeting(x, y+collisionSpeed, obj_workbench)){
		//show_message(true);
			var wb = instance_place(x, y+collisionSpeed, obj_workbench);
			if(!wb.placed){
				global.workBench = false;
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wb.ii)){
						inv[i] = wb.ii;
						inv_num[i]++;
						with(wb){
							instance_destroy();
						}
						//update = true;
					break;
					}
	
				}
	
		//	if(update){
				//update=false;
				scr_update_crafting();
			//}
		}else{
		global.workBench = true;
		}
	}else{
		global.workBench = false;
	}
	break;
	case 2:
		//Wood
		if(place_meeting(x-collisionSpeed, y, obj_wood)){
		//show_message(true);
			var wood = instance_place(x-collisionSpeed, y, obj_wood);
			if(!wood.placed){
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wood.ii)){
						inv[i] = wood.ii;
						inv_num[i]++;
						with(wood){
							instance_destroy();
						}
						//update = true;
					break;
					}
	
				}
	
		//	if(update){
				//update=false;
				scr_update_crafting();
		//	}
		}
	}
	
	//WorkBench
	
		if(place_meeting(x-collisionSpeed, y, obj_workbench)){
		//show_message(true);
			var wb = instance_place(x-collisionSpeed, y, obj_workbench);
			if(!wb.placed){
			global.workBench = false;
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wb.ii)){
						inv[i] = wb.ii;
						inv_num[i]++;
						with(wb){
							instance_destroy();
						}
					//	update = true;
					break;
					}
	
				}
	
			//if(update){
			//	update=false;
				scr_update_crafting();
			//}
		}else{
		global.workBench = true;
	}
	}else{
		global.workBench = false;
	}
	break;
	case 3:
			//Wood
		if(place_meeting(x+collisionSpeed, y, obj_wood)){
		//show_message(true);
			var wood = instance_place(x+collisionSpeed, y, obj_wood);
			if(!wood.placed){
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wood.ii)){
						inv[i] = wood.ii;
						inv_num[i]++;
						with(wood){
							instance_destroy();
						}
						// update = true;
					break;
					}
	
				}
	
			//if(update){
			//	update=false;
				scr_update_crafting();
			//}
		}
	}
	
	//WorkBench
	
		if(place_meeting(x+collisionSpeed, y, obj_workbench)){
		//show_message(true);
			var wb = instance_place(x+collisionSpeed, y, obj_workbench);
			if(!wb.placed){
			global.workBench = false
				for(var i = 0; i < 10; i++){
	
					if((inv[i] == -1) or (inv[i] == wb.ii)){
						inv[i] = wb.ii;
						inv_num[i]++;
						with(wb){
							instance_destroy();
						}
						//update = true;
					break;
					}
	
				}
	
		//	if(update){
			//	update=false;
				scr_update_crafting();
			//}
		}else{
		global.workBench = true;
	}
	}else{
		global.workBench = false;
	}
	break;
}

if(global.canMove){
if(keyboard_check(ord("D")) and place_free(x+collisionSpeed, y)){
	if(x < room_width-5){
		//show_message(true);
			image_speed = walkSpeed/2;
			x+=walkSpeed;

	}
	sprite_index = spr_maleWalkRight;
	dir = 3;

}else if(keyboard_check(ord("S")) and place_free(x, y+collisionSpeed)){
	if(y < room_height-5){
	//	if(!place_meeting(x, y+23, obj_tile_tree) and !place_meeting(x, y+1, obj_workbench) and !place_meeting(x, y+1, obj_wood)){
			image_speed = walkSpeed/2;
			y+=walkSpeed;

	}
	dir = 1;
	sprite_index = spr_maleWalkDown;

}else if(keyboard_check(ord("A")) and place_free(x-collisionSpeed, y)){
	if(x > 5){
//		if(!place_meeting(x-12, y, obj_tile_tree) and !place_meeting(x-1, y, obj_wood) and !place_meeting(x-1, y, obj_workbench) ){
			image_speed = walkSpeed/2;
			x-=walkSpeed;
	//	}
	}
	dir = 2;
	sprite_index = spr_maleWalkLeft;

}else if(keyboard_check(ord("W")) and place_free(x, y-collisionSpeed)){
	if(y > 5){
//		if(!place_meeting(x, y-10, obj_tile_tree) and !place_meeting(x, y-1, obj_wood) and !place_meeting(x, y-1, obj_workbench)){
			image_speed = walkSpeed/2;
			y-=walkSpeed;
//		}
	}
	sprite_index = spr_maleWalkUp;
	dir = 0;

}

if(keyboard_check_released(ord("W")) or keyboard_check_released(ord("A")) or keyboard_check_released(ord("S")) or keyboard_check_released(ord("D")) ){
	image_speed = 0;
	image_index = 0;
	//walkSpeed = 3.5;
}
if(keyboard_check(vk_shift)){
	if(global.hunger > 0 and global.thirst > 0){
		walkSpeed = 4;
		//global.hunger-=0.015;
		//global.thirst-=0.015;
	}
}else if (keyboard_check_released(vk_shift)){
	image_speed = 0;
	image_index = 0;
	walkSpeed = 2.5;

}
if(image_speed > 0){
	if(sprite_index != spr_maleWalkDown and sprite_index != spr_maleWalkLeft and sprite_index != spr_maleWalkRight and sprite_index != spr_maleWalkUp){
	if(image_index > 3 and !attacked){
	var xx = 0;
	var yy = 0;
	
	switch(sprite_index){
		case spr_maleRapierLeft:
			xx= x-30;
			yy=y+2;
		break;
		case spr_maleRapierDown:
			 xx = x;
			 yy = y+10;
		break;
		case spr_maleRapierRight:
			xx = x+28;
			yy=y+2;
		break;
		case spr_maleRapierUp:
			xx = x;
			yy=y-9;
		break;
	}
		
	
		
		var damage = instance_create_layer(xx, yy, "Instances", obj_damage);
			damage.creator = id;
			
			damage.damage = dmg;
			
			damage.alarm[0] = 10;
		attacked = true;
	}
	
	if(image_index > image_number-1){
		image_speed = 0;
	image_index  =0;
	sprite_index = p;
	canAttack = false;
	alarm[0] = attackTimer;
		
	}
}
}

}
//global.hunger-=0.005;
//global.thirst-=0.005;
/*
if(global.hunger <= 0){
	global.hlth-=0.01
}
if(global.thirst <= 0){
	global.hlth-=0.01
}
if(global.hunger < 0){
	global.hunger = 0;
}
if(global.thirst < 0){
	global.thirst = 0;
}

if(global.hunger > 0 and global.thirst > 0){
	if(global.hlth != 100){
		global.hlth+=0.02;
	}
	if(global.hlth > 100){
		global.hlth = 100;
	}
}

if(position_meeting(x, y, obj_tile_water)){	
	if(global.thirst != 100){
	global.thirst+=0.1;
		if(global.thirst > 100){
			global.thirst = 100;
		}
	}
}

*/
if((distance_to_object(obj_fire) <= 100)){
	if(distance_to_object(obj_tile_stone) >= 1){
	global.hlth -=10;
	}
}


if(global.hlth <= 0){
	global.canMove = false;
	image_speed = .5;
	sprite_index = spr_male_die;
	if(image_index == sprite_get_number(spr_male_die)-1){
		image_speed = 0;
		room_restart();
	}
	
}



//Debugging
if(keyboard_check_released(ord("P"))){
	global.hlth-=10;
}


if(keyboard_check_released(ord("O"))){
	global.thirst-=10;
}
if(keyboard_check_released(ord("I"))){
	global.hunger-=10;
}


