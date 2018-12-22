/// @description Insert description here
// You can write your code in this editor
//Draw Textbox

draw_rectangle(xx-2, yy-2, xx+boxWidth+(2*xBuffer)+2, yy+boxHeight+2, false);
draw_sprite(spr_text, 0, xx, yy);


//Draw text
draw_set_font(fnt_txt);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
textPart = string_copy(txt[page], 1, charCount);
if(charCount < string_length(txt[page])){
charCount+=0.5;
}
draw_set_halign(fa_center);
draw_set_color(c_lime);
draw_text(xx+(boxWidth/2), yy+yBuffer, txtname);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text_ext(xx+xBuffer, yy+yBuffer+stringHeight, textPart, stringHeight, boxWidth);
draw_set_font(fnt_default);