/// @description Insert description here
// You can write your code in this editor
//itm = object_get_name(inv[sel]);
//show_message(itm);

if(inv[sel] != -1){
var r = choose(4, 8);
var im  =noone;
//show_message(object_get_name(inv[sel]) != "obj_tile_tree");
switch(dir){
case 0: //up
	
	switch(inv[sel]){
		case 0:
			//im = obj_t
		break;
		case 1:
		im = obj_tile_stone;
		break;
		case 2:
		im = obj_tile_coal;
		break;
		case 3:
		im = obj_tile_copper;
		break;
		case 4:
		im = obj_tile_iron;
		break;
		case 5:
		
		break;
		case 6:
		im = obj_wood;
		break;
		case 7:
		im = obj_stick
		break;
		case 8:
		im = obj_beef;
		break;
		case 9:
		im = obj_tooth
		break;
		case 10:
		im = obj_rapier;
		break;
	}
	
	var itm = instance_create_layer(x, y-(48+r), "Instances", im);
	with(itm){
		speed = 1;
		direction = random_range(0, 180);
		alarm[1]=room_speed/2;
	}
	update = true;
break;
case 1: //down;
	
	switch(inv[sel]){
		case 0:
			//im = obj_t
		break;
		case 1:
		im = obj_tile_stone;
		break;
		case 2:
		im = obj_tile_coal;
		break;
		case 3:
		im = obj_tile_copper;
		break;
		case 4:
		im = obj_tile_iron;
		break;
		case 5:
		
		break;
		case 6:
		im = obj_wood;
		break;
		case 7:
		im = obj_stick
		break;
		case 8:
		im = obj_beef;
		break;
		case 9:
		im = obj_tooth
		break;
		case 10:
		im = obj_rapier;
		break;
	}
	
	var itm = instance_create_layer(x, y+(32+r), "Instances", im);
	with(itm){
		speed = 1;
		direction = random_range(0, -180);
		alarm[1]=room_speed/2;
	}
	update = true;
break;
case 2://left;

switch(inv[sel]){
		case 0:
			//im = obj_t
		break;
		case 1:
		im = obj_tile_stone;
		break;
		case 2:
		im = obj_tile_coal;
		break;
		case 3:
		im = obj_tile_copper;
		break;
		case 4:
		im = obj_tile_iron;
		break;
		case 5:
		
		break;
		case 6:
		im = obj_wood;
		break;
		case 7:
		im = obj_stick
		break;
		case 8:
		im = obj_beef;
		break;
		case 9:
		im = obj_tooth
		break;
		case 10:
		im = obj_rapier;
		break;
	}
	
	var itm = instance_create_layer(x-(48+r), y, "Instances", im);
	with(itm){
		speed = 1;
		direction = random_range(270, 90);
		alarm[1]=room_speed/2;
	}
update = true;
break; 
case 3://right;

switch(inv[sel]){
		case 0:
			//im = obj_t
		break;
		case 1:
		im = obj_tile_stone;
		break;
		case 2:
		im = obj_tile_coal;
		break;
		case 3:
		im = obj_tile_copper;
		break;
		case 4:
		im = obj_tile_iron;
		break;
		case 5:
		
		break;
		case 6:
		im = obj_wood;
		break;
		case 7:
		im = obj_stick
		break;
		case 8:
		im = obj_beef;
		break;
		case 9:
		im = obj_tooth
		break;
		case 10:
		im = obj_rapier;
		break;
	}
	
	var itm = instance_create_layer(x+(32+r), y, "Instances", im);
	with(itm){
		speed = 1;
		direction = 0+random_range(-90, 90);
		alarm[1]=room_speed/2;
	}
update = true;
break;

}
}
//show_message(sel);
inv_num[sel]--;
if(inv_num[sel] <= 0){
	inv[sel] = -1;
	inv_num[sel] = 0;
}
if(update){
	update=false;
	scr_update_crafting();
}