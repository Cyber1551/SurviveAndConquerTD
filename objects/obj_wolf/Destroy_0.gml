/// @description Insert description here
// You can write your code in this editor
var r = choose(0, 1, 2, 3);
var rr = choose(0, 1, 2);

if(r == 1){
	instance_create_layer(x, y, "Instances", obj_tooth);
}	
if(rr == 1){
	instance_create_layer(x, y, "Instances", obj_beef);
}	