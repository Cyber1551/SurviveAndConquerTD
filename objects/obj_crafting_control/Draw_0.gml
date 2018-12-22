/// @description Insert description here
// You can write your code in this editor

draw_set_halign(0);
draw_set_valign(1);


if(crafting){
	var ind = 0;
	
	var xpos = camera_get_view_x(view_camera[0]);
	var ypos = camera_get_view_y(view_camera[0]);
	//var w = camera_get_view_width(view_camera[0]);
	//var h = camera_get_view_height(view_camera[0]);
		
	for (var i = 0; i<crafts; i++){
	//show_message(cancraft[i]);
		if(cancraft[i]){
		
			
		
			var mx = mouse_x-xpos;
			var my = mouse_y;
			
			//show_message(mx);
			if(point_in_rectangle(mx, my, 0, (ypos+70) + ind*36, xpos+view_wview[0], (ypos+102)+ind*36)){
				draw_set_color(c_white);
				draw_set_alpha(.4);
				//	show_message(xpos+":"+obj_player.x);
			//show_message(xpos);
				draw_rectangle(xpos, (ypos+70)+ind*36, xpos+view_wview[0], (ypos+102)+ind*36, 0);
				
				
				draw_set_alpha(1);
				if(mouse_check_button_pressed(mb_left)){
					var type_to_remove;
					var amt_to_remove;
					
					for(var j = 0; j<craft[i, 2];j++){
						type_to_remove[j] = craft[i, 3+(j*2)];
						amt_to_remove[j] = craft[i, 4+(j*2)];
							do{
								for(var k =0;k < 10; k++){
								if(amt_to_remove[j] == 0){
									continue;
								}
								//show_message(type_to_remove[j]);
								if(obj_player.inv[k] == type_to_remove[j]){
									amt_to_remove[j] -= min(obj_player.inv_num[k], amt_to_remove[j]);
									obj_player.inv_num[k] -= craft[i,4+(j*2)];
									obj_player.inv_num[k] = max(0, obj_player.inv_num[k]);
									
									if(obj_player.inv_num[k] == 0){
										obj_player.inv[k] = -1;	
									}
								}
							}
						}
						until(amt_to_remove[j] == 0);
				
				}
				scr_update_crafting();
					
					
					switch(craft[i, 0]){
						case "Stick ( 1 Wood )":
						for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_stick);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						break;
						case "Work Bench ( 4 Wood, 4 Stick )":
							for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_workbench);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						break;
						case "Rapier (3 Iron, 1 Stick, 1 Copper)":
							for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_rapier);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						break;
					}
					
					
				
				}
				if(mouse_check_button_pressed(mb_right)){
				
				do {
					var type_to_remove;
					var amt_to_remove;
					
					for(var j = 0; j<craft[i, 2];j++){
						type_to_remove[j] = craft[i, 3+(j*2)];
						amt_to_remove[j] = craft[i, 4+(j*2)];
						
						do{
							for(var k =0;k < 10; k++){
								if(amt_to_remove[j] == 0){
									continue;
								}
								if(obj_player.inv[k] == type_to_remove[j]){
									amt_to_remove[j] -= min(obj_player.inv_num[k], amt_to_remove[j]);
									obj_player.inv_num[k] -= craft[i,4+(j*2)];
									obj_player.inv_num[k] = max(0, obj_player.inv_num[k]);
									
									if(obj_player.inv_num[k] == 0){
										obj_player.inv[k] = -1;	
									}
								
								}
								
							}
							
						}until(amt_to_remove[j] == 0);
						
						
					
					scr_update_crafting();
					
					
					switch(craft[i, 0]){
						case "Stick ( 1 Wood )":
						for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_stick);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						break;
						case "Work Bench ( 4 Wood, 4 Stick )":
							for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_workbench);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						break;
						case "Rapier (3 Iron, 1 Stick, 1 Copper)":
						if(global.workBench == true){
							for(var ii = 0; ii < amt[i]; ii++){
							var dir = irandom(360);
							var ldx = lengthdir_x(1, dir);
							var ldy = lengthdir_y(1, dir);
							var inst = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*64),"Instances", obj_rapier);
							//var inst1 = instance_create_layer(obj_player.x+(ldx*64), obj_player.y+(ldy*32),"Instances", obj_stick);
						
							inst.hspeed=ldx*2;
							inst.vspeed=ldy*2;
							with(inst){
								alarm[1] = room_speed/2;
							}
						}
						}
						break;
					}
					
					
				}
				
			}
			until(!cancraft[i]);
		}
	}
	draw_set_color(c_white);
	draw_set_font(fnt_craft);
	draw_text(xpos+64, (ypos+85)+ind*36, craft[i, 0]);
	draw_sprite(tiles, craft[i, 1], xpos+8, (ypos+65)+ind*36);
	ind++;
}
}
}