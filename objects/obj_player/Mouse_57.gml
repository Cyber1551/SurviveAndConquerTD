/// @description Insert description here
// You can write your code in this editor
if(!place_meeting(mouse_x-16, mouse_y-16, obj_tile_tree) and !place_meeting(mouse_x-16, mouse_y-16, obj_workbench) and!place_meeting(mouse_x-16, mouse_y-16, obj_ores))
if(distance_to_point(mouse_x-16, mouse_y-16) <= 100){
switch(inv[sel]){
	case 6: //wood
		inv_num[sel]--;
		if(inv_num[sel] <= 0){
			inv[sel] = -1;
			inv_num[sel] = 0;
		}
		var inst = instance_create_layer(mouse_x-16, mouse_y-16, "Instances", obj_wood);
		with(inst){
			placed = true;
			move_snap(32, 32);
		}
		scr_update_crafting();

	break;
	case 11: //work bench
		inv_num[sel]--;
		if(inv_num[sel] <= 0){
			inv[sel] = -1;
			inv_num[sel] = 0;
		}
		var inst = instance_create_layer(mouse_x-16, mouse_y-16, "Instances", obj_workbench);
		with(inst){
			placed = true;
			move_snap(32, 32);
		}
		scr_update_crafting();
	break;
}

}