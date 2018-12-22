/// @description Insert description here
// You can write your code in this editor

txt[0] = "This is an emergency! All crew report to the escape pods reporting heavy fire from a nearby planet. (I)";
txt[1] = "Sir, we have a problem. A fire has started on the ship blocking the way to the escape pods. Sir? Sir? (I)";
txt[2] = "We've lost all communications to the captain! "+global.name+", you need to get to an escape pod IMMEDIATELY (I)";
txt[3] = "The planet, although hostile, has oxygen. Your HUD will guide you through the world and through this ship. (I)";
txt[4] = "Good Luck! (I)";

xBuffer = 10;
yBuffer = 10;
boxWidth = sprite_get_width(spr_text)-(2*xBuffer);
boxHeight = sprite_get_height(spr_text);
stringHeight = string_height(txt[0]);
page = 0;
charCount = 0;
txtname = choose("Lieutenant", "Captain", "Deputy")+" "+choose("Rogers", "John", "Linda", "Max", "Sam", "Brandon", "Jane", "Katherine");
xx = (room_width/2)-boxWidth/2;
yy = (room_height-boxHeight)-64;