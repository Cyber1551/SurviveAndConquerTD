/// @description Insert description here
// You can write your code in this editor
//x = room_width/2;
//y = room_width/2;
depth = -200;

partFire_sys = part_system_create();

partFire = part_type_create();
part_type_sprite(partFire, spr_fire, 0, 0, 1);
part_type_size(partFire,1,2,0,0);
part_type_color2(partFire,c_orange,c_red);
part_type_alpha3(partFire,1,1,0);
part_type_speed(partFire,4,10,0,0);
part_type_direction(partFire,85,95,0,5);
part_type_orientation(partFire,0,359,0,0,0);
part_type_blend(partFire,1);
part_type_life(partFire,20,40);

//Cinder Particle
partCinder = part_type_create();
part_type_shape(partCinder,pt_shape_flare);
part_type_size(partCinder,0.5,1,0,0);
part_type_color2(partCinder,c_orange,c_red);
part_type_alpha3(partCinder,1,1,0);
part_type_speed(partCinder,1,2,0,0);
part_type_direction(partCinder,85,95,0,0);
part_type_blend(partCinder,1);
part_type_life(partCinder,240,320);

//Particle Emitter
partFire_emit = part_emitter_create(partFire_sys);
part_system_depth(partFire_sys, -200);
part_emitter_region(partFire_sys,partFire_emit,x-100,x+100,y-20,y+20,ps_shape_ellipse,ps_distr_linear);