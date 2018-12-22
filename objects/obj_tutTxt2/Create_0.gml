/// @description Insert description here
// You can write your code in this editor
txt[0] = "Great Job! Here is a work bench for you it is needed for more advanced construction. (I)";
txt[1]  = "Inside the chest (I) is the resources needed to craft a rapier, or a small sword. Use 'E' to craft and kill the intruder! (I)";

xBuffer = 10;
yBuffer = 10;
boxWidth = sprite_get_width(spr_text)-(2*xBuffer);
boxHeight = sprite_get_height(spr_text);
stringHeight = string_height(txt[0]);
page = 0;
charCount = 0;
txtname = global.txtnm;//choose("Lieutenant", "Captain", "Deputy")+" "+choose("Rogers", "John", "Linda", "Max", "Sam", "Brandon", "Jane", "Katherine");
camX = camera_get_view_x(view_camera[0]);

xx = camX+(view_wview[0]/2)-boxWidth/2;
yy = (room_height-boxHeight)-64;