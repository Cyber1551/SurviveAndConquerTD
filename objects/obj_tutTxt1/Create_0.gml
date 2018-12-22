/// @description Insert description here
// You can write your code in this editor
txt[0] = "The chest over there contains stone, you can use it to make a path through the fire! (I)";
txt[1]  = "Press 'I' to interact with the chest and 'RMB' to place the stone. (I)";

xBuffer = 10;
yBuffer = 10;
boxWidth = sprite_get_width(spr_text)-(2*xBuffer);
boxHeight = sprite_get_height(spr_text);
stringHeight = string_height(txt[0]);
page = 0;
charCount = 0;
txtname = global.txtnm;//choose("Lieutenant", "Captain", "Deputy")+" "+choose("Rogers", "John", "Linda", "Max", "Sam", "Brandon", "Jane", "Katherine");
xx = (view_wview[0]/2)-boxWidth/2;
yy = (room_height-boxHeight)-64;