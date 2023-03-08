/// @description Health
// You can write your code in this editor
draw_set_font(Menu);
draw_healthbar(50, 50, 600, 125, health, c_grey, c_red, c_lime, 0, true, false);
draw_set_color(c_black);
draw_text(50, 130, "Score: " + string(score))