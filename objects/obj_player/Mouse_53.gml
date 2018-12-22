/// @description Insert description here
// You can write your code in this editor
if(!global.breaking){
//Stone
if(position_meeting(mouse_x, mouse_y, obj_tile_stone)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_tile_stone);
		with(i){
			alarm[0] = self.tough*60;
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}
//Coal
if(position_meeting(mouse_x, mouse_y, obj_tile_coal)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_tile_coal);
		with(i){
			alarm[0] = self.tough*60;
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}
//Copper
if(position_meeting(mouse_x, mouse_y, obj_tile_copper)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_tile_copper);
		with(i){
			alarm[0] = self.tough*60;
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}
//Iron
if(position_meeting(mouse_x, mouse_y, obj_tile_iron)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_tile_iron);
		with(i){
			alarm[0] = self.tough*60;
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}

//Tree
if(position_meeting(mouse_x, mouse_y, obj_tile_tree)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_tile_tree);
		with(i){
			alarm[0] = self.tough*60;
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}



//workbench
if(position_meeting(mouse_x, mouse_y, obj_workbench)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_workbench);
		with(i){
			if(placed){
			alarm[0] = self.tough*60;
			}
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}

//wood
if(position_meeting(mouse_x, mouse_y, obj_wood)){
	if(distance_to_point(mouse_x, mouse_y) <= 100){
		//global.breaking = true;
		var i = instance_position(mouse_x, mouse_y, obj_wood);
		with(i){
			if(placed){
			alarm[0] = self.tough*60;
			}
		}
	}else if(distance_to_point(mouse_x, mouse_y) > 100){
		global.breaking = false;
	}
}else{
	global.breaking = false;
}






}