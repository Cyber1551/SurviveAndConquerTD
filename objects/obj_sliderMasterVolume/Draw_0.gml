/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_part(sprite_index, 1, 0, 0, sprite_width*value, sprite_height, x, y-sprite_get_yoffset(sprite_index));
draw_sprite(spr_sliderBtn, 0, x+sprite_width*value, y);
draw_set_color(c_white);
draw_text(x+sprite_width+50, y, "Music: "+string(round(global.musicVolume*100)));