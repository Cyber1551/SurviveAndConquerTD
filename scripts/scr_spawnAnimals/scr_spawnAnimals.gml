cowAmount = instance_number(obj_cow);
wolfAmount = instance_number(obj_wolf);

if(cowAmount < 5){
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_cow);
}
if(wolfAmount < 3){
	instance_create_layer(random(room_width), random(room_height), "Instances", obj_wolf);
}